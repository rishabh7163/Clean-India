package com.exampl.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
private static Connection con;
	public static Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cleanindia","root","root");
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
}
