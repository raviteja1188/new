package com.nirman.material;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/materials")
public class materials extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MaterialModel> m = new ArrayList<>();
		m=MaterialDAO.getAllUser();
		request.setAttribute("data",m);
		RequestDispatcher dispatcher = request.getRequestDispatcher("materialcard.jsp");
		dispatcher.forward(request, response);
	}

	
	
}
