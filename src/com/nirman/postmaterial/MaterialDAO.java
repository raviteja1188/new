package com.nirman.postmaterial;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class MaterialDAO {
	public static int addAvail(MaterialModel s)
	{
		int result=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
			PreparedStatement pst=con.prepareStatement("insert into nirmann.post(category,mtype,quantity,phone,image)values(?,?,?,?,?)");
			Statement smt = con.createStatement();
			pst.setString(1,s.getCategory());
			pst.setString(2,s.getMtype());
			pst.setString(3,s.getQuantity());
			pst.setString(4,s.getPhone());
			pst.setString(5, s.getImage());
			result=pst.executeUpdate(); 
			result = smt.executeUpdate("update nirmann.post set quantity=quantity+1 where category='"+s.getCategory()+"'");
		   }
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return result;
	}

}
