
package datamining;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alex Hughes
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            
            Connector con = new Connector(
                        new Credentials("83.212.100.114", "data_mining",
                        "ahughes", "AineGifi117"));
            con.setAutoCommit(false);
            
            Parser p = new Parser(con);
            
            try {
                p.parseHeaderCols();
                p.bufferReadFile("cup98lrn.txt");
            } catch (IOException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
