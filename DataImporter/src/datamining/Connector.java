/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package datamining;

/**
 *
 * @author Alex Hughes
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Connector {

    protected static Connection connection;
    private Credentials credentials;
    private static final String DATABASE_USER = "user";
    private static final String DATABASE_PASSWORD = "password";
    private static final String MYSQL_AUTO_RECONNECT = "autoReconnect";
    private static final String MYSQL_MAX_RECONNECTS = "maxReconnects";

    public Connector(Credentials cre) throws SQLException, ClassNotFoundException {
        credentials = cre;
        Class.forName("com.mysql.jdbc.Driver");	//in order to manipulate data on the mySQL server

        java.util.Properties connProperties = new java.util.Properties();
        connProperties.put(DATABASE_USER, credentials.getUsername());
        connProperties.put(DATABASE_PASSWORD, credentials.getPassword());
        connProperties.put(MYSQL_AUTO_RECONNECT, "true");
        connProperties.put(MYSQL_MAX_RECONNECTS, "2");
        connProperties.put("characterEncoding", "utf8");

        connection = DriverManager.getConnection("jdbc:mysql://" + credentials.getURL() + ":3306/" + 
                credentials.getSchema(), connProperties);
        printInfo();    //used to print info of the connection
    }

    public void reConnect() throws SQLException, ClassNotFoundException {

        connection.close();
        Class.forName("com.mysql.jdbc.Driver");	//in order to manipulate data on the mySQL server

        java.util.Properties connProperties = new java.util.Properties();
        connProperties.put(DATABASE_USER, credentials.getUsername());
        connProperties.put(DATABASE_PASSWORD, credentials.getPassword());
        connProperties.put(MYSQL_AUTO_RECONNECT, "true");
        connProperties.put(MYSQL_MAX_RECONNECTS, "4");
        connProperties.put("characterEncoding", "utf8");

        connection = DriverManager.getConnection("jdbc:mysql://" + credentials.getURL() + ":3306/" + 
                credentials.getSchema(), connProperties);
        printInfo();    //used to print info of the connection

    }

    public ResultSet sendQuery(String aQuery) throws SQLException {
        ResultSet rs = null;
        Statement stmt;

        if (connection.isValid(1)) {
            stmt = connection.createStatement();
            rs = stmt.executeQuery(aQuery);
        } else {
            try {
                reConnect();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Connector.class.getName()).log(Level.SEVERE, null, ex);
            }
            stmt = connection.createStatement();
            rs = stmt.executeQuery(aQuery);
        }
        System.out.println(aQuery);
        return rs;
    }

    public int sendUpdate(String aQuery) throws SQLException {
        Statement stmt;

        if (connection.isValid(1)) {
            stmt = connection.createStatement();
        } else {
            try {
                reConnect();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Connector.class.getName()).log(Level.SEVERE, null, ex);
            }
            stmt = connection.createStatement();
        }
        System.out.println(aQuery);
        return stmt.executeUpdate(aQuery);
    }
    
    public void setSchema(String aSchema) throws SQLException {
        connection.setSchema(aSchema);
    }

    private void printInfo() {
        System.out.println("Database Management...");
        System.out.println("Succesfully connected to: " + credentials.getURL());
    }

    public void closeConnection() throws SQLException {
        connection.close();
    }

    public Credentials getCredentials() {
        return credentials;
    }
    
    public void setAutoCommit(boolean anExpression) throws SQLException {
        connection.setAutoCommit(anExpression);
    }
    
    public void commit() throws SQLException {
        connection.commit();
    }
    
    public void rollback() throws SQLException {
        connection.rollback();
    }
}
