package com.cs.bru.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
 
	public Connection openConnect() {
		Connection connect=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/keepworkteach3" + "?user=root&password=");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return connect;
	}
	/*public static void main(String[] args) {
		ConnectDB con = new ConnectDB();
		Connection connect = null;
		connect = con.openConnect();
		if (connect != null) {
			System.out.println("Database Connected.");
		} else {
			System.out.println("Database Connect Failed.");
		}

	}*/
}
