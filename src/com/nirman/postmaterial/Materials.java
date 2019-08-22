package com.nirman.postmaterial;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Materials")
public class Materials extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category=request.getParameter("category");
		String mtype=request.getParameter("mtype");
		String quantity=request.getParameter("quantity");
		String phone=request.getParameter("phone");
		String image  = request.getParameter("image");
			MaterialModel sgn=new MaterialModel();
			sgn.setCategory(category);
			sgn.setMtype(mtype);
			sgn.setQuantity(quantity);
			sgn.setPhone(phone);
			sgn.setImage(image);
			int result=MaterialDAO.addAvail(sgn);
			System.out.println(result);
			if(result>0){
				response.sendRedirect("post.jsp");
			}
	}

}
