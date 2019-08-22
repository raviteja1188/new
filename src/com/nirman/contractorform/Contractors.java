package com.nirman.contractorform;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Contractors
 */
@WebServlet("/Contractors")
public class Contractors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
  		String email=request.getParameter("email");
  		String phone=request.getParameter("phone");
  		String address=request.getParameter("address");
  		String qualification=request.getParameter("qualification");
  		String city=request.getParameter("city");
  		String photo=request.getParameter("photo");
  		String pincode=request.getParameter("pincode");
  		ContractorModel cm=new ContractorModel();
  		cm.setName(name);
  		cm.setEmail(email);
  		cm.setPhone(phone);
  		cm.setAddress(address);
  		cm.setQualification(qualification);
  		cm.setCity(city);
  		cm.setPhoto(photo);
  		cm.setPincode(pincode);
  		 int result=ContractorDAO.addContractor(cm);
   		
   		System.out.println(result);
   		if(result>0)
   		{
   			response.sendRedirect("contractorform.jsp");
   		}

	}

}
