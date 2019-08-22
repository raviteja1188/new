package com.nirman.contractor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContractorDAO {
	public static List<ContactorModel> getAllUser(){
		List<ContactorModel> contractorlist= new ArrayList<>();		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("Select name,email,phone,qualification,city,photo from nirmann.contract");
			while(rs.next()){
				ContactorModel u=new ContactorModel();
				
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));
				u.setQualification(rs.getString("qualification"));
				u.setPhoto(rs.getString("photo"));
				u.setCity(rs.getString("city"));
				contractorlist.add(u);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return contractorlist;
	}



}
