/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package datamining;

import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Alex Hughes
 */
public class Parser {

    private ArrayList<String> headerCols;
    private ArrayList<String> insertValues;
    private String createTableQ;

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

    public void importInDatabase() throws IOException {
        String data = "";
        String query;
        String insertCols = ""
                + "INSERT INTO `kdd98` (";

        //starting from 1 to avoid id column, it is auto incrementing
        for (int i = 0; i < headerCols.size(); i++) {
            insertCols += "`" + headerCols.get(i) + "`";
            if (headerCols.size() == i + 2) {
                insertCols += ") VALUES \n";
                break;
            } else {
                insertCols += ", ";
            }
        }

        Scanner sc = new Scanner(readFile("test.txt"));

        while (sc.hasNextLine()) {
            Scanner lsc = new Scanner(sc.nextLine());
            lsc.useDelimiter(",");
            data += "(";
            for (int i = 0; i < headerCols.size(); i++) {
                data += "'" + lsc.next() + "'";
                if (headerCols.size() == i + 2) {
                    data += "), \n";
                    break;
                } else {
                    data += ", ";
                }
            }
        }

        query = insertCols + data;
        fileOutput(query, "query.sql");

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
