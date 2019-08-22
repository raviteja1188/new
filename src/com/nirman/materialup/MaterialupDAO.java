package com.nirman.materialup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class MaterialupDAO {
	public static int addmaterials(MaterialupModel m){
		int result=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
			PreparedStatement pst=con.prepareStatement("update nirmann.post set quantity=quantity+? where mtype=?");
			pst.setString(1,m.getQuantity());
			pst.setString(2,m.getMtype());
			
			
			result=pst.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return result;

}

}
