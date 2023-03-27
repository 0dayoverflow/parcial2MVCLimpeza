package control;

import java.sql.*;


public class MySQLConnector {
    private Connection connection;
    
    public MySQLConnector(String host, String database, String user, String password) throws SQLException {
        String url = "jdbc:mysql://" + host + "/" + database + "?useSSL=false";
        this.connection = DriverManager.getConnection(url, user, password);
    }
    
    public Connection getConnection() {
        return this.connection;
    }
    
    public void close() throws SQLException {
        if (this.connection != null) {
            this.connection.close();
        }
    }
    
}