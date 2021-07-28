package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

	public static Connection getMySQLConnection() {
		// ChÃº Ã½: Thay Ä‘á»•i cÃ¡c thÃ´ng sá»‘ káº¿t ná»‘i cho phÃ¹ há»£p.
		String hostName = "localhost";
		String dbName = "project";
		String userName = "root";
		String password = "123456";
// Class.forName("com.mysql.cj.jdbc.Driver");

		return getMySQLConnection(hostName, dbName, userName, password);
	}

	public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password) {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			// jdbc:mysql://localhost:3306/simplehr
			String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

			conn = DriverManager.getConnection(connectionURL, userName, password);
		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}

		return conn;
	}

// kiá»ƒm tra káº¿t ná»‘i csdl
	public static void main(String args[]) {
		System.out.println(getMySQLConnection());
		System.out.println("connect");
	}

}