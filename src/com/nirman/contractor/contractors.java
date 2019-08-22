package com.nirman.contractor;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/contractors")
public class contractors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ContactorModel> contractor = new ArrayList<>();
		contractor=ContractorDAO.getAllUser();
		RequestDispatcher dispatcher=request.getRequestDispatcher("contractor.jsp");
		request.setAttribute("data", contractor);		//to get data to jsp
		dispatcher.forward(request, response);
	}

	

}
