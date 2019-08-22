package com.niramn.update;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/materialup")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
  		String mtype=request.getParameter("mtype");
  		String quantity=request.getParameter("quantity");
  		
  		UpdateModel cm=new UpdateModel();
  	
  		cm.setMtype(mtype);
  		cm.setQuantity(quantity);
  		
  		 int result=UpdateDAO.addmaterials(cm);
   		
   		System.out.println(result);
   		if(result>0)
   		{
   			response.sendRedirect("successpay.jsp");
   		}

	}

}