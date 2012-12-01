/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package datamining;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alex Hughes
 */
public class Parser {

    private ArrayList<String> headerCols;
    private ArrayList<String> insertValues;
    private String createTableQ;
    private Connector con;
    private static int transactionNo = 0;

    public Parser(Connector aCon) {
        con = aCon;
        transactionNo = 0;
    }

    //will probably have to use StringBuffer to read and write.
    //http://www.techrepublic.com/article/stringbuffer-helps-you-reduce-java-overhead/5031999
    public void parseHeaderCols() throws IOException {
        String headerS;
        headerCols = new ArrayList<String>();

        headerS = readFile("header.txt");

        if (headerS != null) {
            Scanner sc = new Scanner(headerS);
            sc.useDelimiter(",");

            while (sc.hasNext()) {
                headerCols.add(sc.next());
            }
        }
    }

    public void createTableQuery() {
        String query = ""
                + "DROP TABLE IF EXISTS `kdd98`; \n"
                + "CREATE TABLE IF NOT EXISTS `kdd98` ( \n"
                + "`ID` INT NOT NULL AUTO_INCREMENT, \n";

        for (int i = 0; i < headerCols.size(); i++) {
            query += " `" + headerCols.get(i) + "` VARCHAR(10) NULL, \n";
        }

        query += "PRIMARY KEY (`ID`)) \n";
        query += "ENGINE = MyISAM;";
        System.out.println(query);

        createTableQ = query;
    }

    public void insertQueries(String someLines) throws IOException {
        String data = "";
        String query;
        String insertCols = ""
                + "INSERT INTO `kdd98` (";

        for (int i = 0; i < headerCols.size(); i++) {
            insertCols += "`" + headerCols.get(i) + "`";
            if (headerCols.size() == i + 2) {
                insertCols += ") VALUES \n";
                break;
            } else {
                insertCols += ", ";
            }
        }

        Scanner sc = new Scanner(someLines);
        System.out.println("Scanner Created");

        while (sc.hasNextLine()) {
            Scanner lsc = new Scanner(sc.nextLine());
            lsc.useDelimiter(",");
            data += "(";
            for (int i = 0; i < headerCols.size(); i++) {
                data += "'" + lsc.next() + "'";
                if (headerCols.size() == i + 2) {
                    data += "); \n";
                    query = insertCols + data;
                    System.out.println(query);
                    importLine(query);
                    data = "";
                    break;
                } else {
                    data += ", ";
                }
            }
        }
    }

    public void importLine(String aQuery) {
        try {
            con.sendUpdate(aQuery);
            con.commit();
            System.out.println(transactionNo + " - Transaction Complete");
            transactionNo++;
        } catch (SQLException ex) {
            try {
                con.rollback();
            } catch (SQLException ex1) {
                System.err.println("Even Rollback Failed");
                Logger.getLogger(Parser.class.getName()).log(Level.SEVERE, null, ex1);
            }
            System.out.println("Transaction Failed");
            Logger.getLogger(Parser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void fileOutput(String content, String filename) throws IOException {
        BufferedWriter primaryOut = new BufferedWriter(new OutputStreamWriter(
                new FileOutputStream(filename), "UTF8"));

        primaryOut.write(content);

        primaryOut.close();
    }

    /**
     * This function takes a filename as a parameter, reads the file's contents
     * into a String, encoded in UTF-8 and returns the String.
     *
     * @param aFile
     * @return
     * @throws IOException
     */
    public String bufferReadFile(String aFile) throws IOException {
        String contents = "";
        String s;
        BufferedReader fr = new BufferedReader(new InputStreamReader(new FileInputStream(aFile), "UTF8"));

        int i = 0;
        while ((s = fr.readLine()) != null) {
            if (i % 100 != 0) {
                contents += s + "\n";
            } else {
                insertQueries(contents);
                contents = "";
            }

            System.out.println((i++) + " - line read");
        }
        fr.close();
        return contents;
    }

    public String readFile(String aFile) throws IOException {
        String contents = "";
        String s;
        BufferedReader fr = new BufferedReader(new InputStreamReader(new FileInputStream(aFile), "UTF8"));
        while ((s = fr.readLine()) != null) {
            contents += s + "\n";
        }
        fr.close();
        return contents;
    }
}
