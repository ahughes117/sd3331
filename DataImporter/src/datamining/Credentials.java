/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package datamining;

import java.io.Serializable;

/**
 *
 * @author Alex Hughes
 */

public class Credentials implements Serializable{
    
    private String URL;
    private String schema;
    private String username;
    private String password;
    
    public Credentials(String aURL, String aSchema, String aUsername, String aPassword){
        URL = aURL;
        schema = aSchema;
        username = aUsername;
        password = aPassword;
    }
    
    public String getURL(){
        return URL;
    }
    
    public String getUsername(){
        return username;
    }
    
    public String getSchema(){
        return schema;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setURL(String aURL){
        URL = aURL;
    }
    
    public void setSchema(String aSchema){
        schema = aSchema;
    }
    
    public void setUsername(String aUsername){
        username = aUsername;
    }
    
    public void setPassword(String aPassword){
        password = aPassword;
    }
    
    public void clear(){
        URL = null;
        schema = null;
        username = null;
        password = null;
    }
    
}
