package com.nirman.material;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MaterialDAO {
	public static List<MaterialModel> getAllUser(){
		List<MaterialModel> mm=new ArrayList<>();
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmann","root","root");
				PreparedStatement pst = con.prepareStatement("SELECT id,category,quantity,image FROM nirmann.post");
				ResultSet rs=pst.executeQuery();
				while(rs.next()){
					MaterialModel u=new MaterialModel();
					u.setId(rs.getInt("id"));
					u.setCategory(rs.getString("category"));
					u.setQuantity(rs.getString("quantity"));
					u.setImage(rs.getString("image"));
					mm.add(u);
					
				}
			   }
			catch(Exception e )
			{
				e.printStackTrace();
			}
			System.out.println(mm);
			return mm;
		}

}
