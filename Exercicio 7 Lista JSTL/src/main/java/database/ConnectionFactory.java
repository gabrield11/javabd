package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	private static Connection connection;
	
	public static Connection getConnection() {
		if(connection == null) {
			try {
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
				connection = DriverManager.getConnection("jdbc:mysql://localhost/if_delivery","root","root");
			}
			catch(SQLException e){
				throw new RuntimeException(e);
			}
		}
		return connection;
		
		
		
	} 
	
}
