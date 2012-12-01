/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package datamining;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/**
 *
 * @author Alex Hughes
 */
public class Parser {
    
    //will probably have to use StringBuffer to read and write.
    //http://www.techrepublic.com/article/stringbuffer-helps-you-reduce-java-overhead/5031999
    
    public String parseHeader(String aFileName) {
        String header = "";
        return header;
    }
    
    public String createTableQuery(String aHeader) {
        String query = "";
        return query;
    }
    
    public void importInDatabase(String aQuery){
        
    }
    
    public static void fileOutput(String content, String filename) throws IOException {
        BufferedWriter primaryOut = new BufferedWriter(new OutputStreamWriter(
                new FileOutputStream(filename), "UTF8"));
        
        primaryOut.write(content);
        
        primaryOut.close();
    }
    
}
