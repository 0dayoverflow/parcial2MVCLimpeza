package vista;

import control.MySQLConnector;
import java.sql.*;
import java.sql.SQLException;



public class app {


    public static void main(String[] args) {
        String host = "localhost";
        String database = "bdLimpieza";
        String user = "admin";
        String password = "";
        
        
        
        try {
            MySQLConnector connector = new MySQLConnector(host, database, user, password);
            Connection connection = connector.getConnection();
            System.out.println("ConexionExitosa");
            

            
            connector.close();
            System.out.println("ConexiónCerrada.");
        
        }catch(SQLException e){
            
            System.err.println("Failed to connect to MySQL database!");
            e.printStackTrace();

        
        }
        
    }
    
}
