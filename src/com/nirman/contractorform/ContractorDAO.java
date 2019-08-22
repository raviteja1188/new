package com.nirman.contractorform;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class ContractorDAO {
	public static int addContractor(ContractorModel c){
		int result=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
			PreparedStatement pst=con.prepareStatement("insert into nirmann.contract(name,email,phone,address,qualification,city,photo,pincode) values(?,?,?,?,?,?,?,?)");
			pst.setString(1,c.getName());
			pst.setString(2,c.getEmail());
			pst.setString(3,c.getPhone());
			pst.setString(4,c.getAddress());
			pst.setString(5,c.getQualification());
			pst.setString(6,c.getCity());
			pst.setString(7,c.getPhoto());
			pst.setString(8,c.getPincode());
			result=pst.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return result;

}
}
