package com.nirman.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=LoginDAO.checK(email, password);
		if(name!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("name", name);
			response.sendRedirect("index.jsp");
		}
		else
		{
			RequestDispatcher d=request.getRequestDispatcher("login.jsp");
			request.setAttribute("status","Invalid Password");
			d.forward(request, response);
		}
		
	}

}
