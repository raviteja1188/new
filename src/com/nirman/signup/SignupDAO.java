package com.nirman.signup;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class SignupDAO {
	public static int addSignup(SignupModel s)
	{
		int result=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
			PreparedStatement pst=con.prepareStatement("insert into nirmann.signup(name,phone,email,password,cpassword)values(?,?,?,?,?)");
			pst.setString(1,s.getName());
			pst.setString(2,s.getPhone());
			pst.setString(3,s.getEmail());
			pst.setString(4,s.getPassword());
			pst.setString(5,s.getCpassword());
			result=pst.executeUpdate(); 
		   }
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return result;
	}

}

