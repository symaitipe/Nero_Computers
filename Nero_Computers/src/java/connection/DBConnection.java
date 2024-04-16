
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Sahan Maitipe
 */
public class DBConnection {
    private static DBConnection dBConnection = null;
    private Connection connection = null;
    
    
    private DBConnection(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3305/nero_computers","root", "sahanSQL1234");
             System.out.print("connected");
        } catch (ClassNotFoundException | SQLException  ex) {
            ex.printStackTrace();
        } 
    }
    
     public static DBConnection getInstance() throws ClassNotFoundException, SQLException{
        if(dBConnection==null){
            dBConnection=new DBConnection();
        }
        return dBConnection;
    }
    
    public Connection getConnection(){
        return connection;
    }
    
}
