package com.ipsr.service;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
public class LoginService {

	public boolean check(String username,String password,String category)
	{	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/fifacup","root","");
	PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=? and category=?");
	ps.setString(1,username);
	ps.setString(2,password);
	ps.setString(3,category);
	ResultSet rs=ps.executeQuery();
	 if(rs.next())
	 {
		
		 return true;
		 
	 }
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	   return false;
	}
}
