package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	public static Connection getConnect() throws ClassNotFoundException, SQLException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager
				.getConnection("jdbc:sqlserver://localhost:1433;databaseName=FLOWER;user=sa;password=1" + "");

	}

    
	public static void main(String[] args) throws ClassNotFoundException {
		try {
			new Connect();
			System.out.println(Connect.getConnect());
		} catch (SQLException e) {
			e.getStackTrace();
		}
	}
}
