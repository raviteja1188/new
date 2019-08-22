package com.nirman.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {

	public static String checK(String email,String password){
		String name=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
			PreparedStatement pst=con.prepareStatement("select name from nirmann.signup where email=? and password=?");
			pst.setString(1,email);
			pst.setString(2,password);
			ResultSet result=pst.executeQuery();
			while(result.next())
			{
				name=result.getString("name");
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
			return name;
	}
	}

