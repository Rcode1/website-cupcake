package br.com.jdbc;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection_client() throws ClassNotFoundException {

		Connection con = null;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/db_cupcake_client?user=root&password=hook";
			con = DriverManager.getConnection(url);

		} catch (Exception e) {

		}
		return con;
	}
	
	public Connection getConnection_admin() throws ClassNotFoundException {

		Connection con = null;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/db_cupcake_admin?user=root&password=hook";
			con = DriverManager.getConnection(url);

		} catch (Exception e) {

		}
		return con;
	}

}

