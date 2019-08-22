package com.nirman.signup;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("mail");
		String password=request.getParameter("pass");
		String cpassword=request.getParameter("cpass");
		if(password.equals(cpassword)){
			SignupModel sgn=new SignupModel();
			sgn.setName(name);
			sgn.setPhone(phone);
			sgn.setEmail(email);
			sgn.setPassword(password);
			sgn.setCpassword(cpassword);
			
			int result=SignupDAO.addSignup(sgn);
			System.out.println(result);
			if(result>0){
				response.sendRedirect("login.jsp");
				Mailer.SendMail(email, "welcome", "Build your home ");
			}
		}
		
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("signup1.jsp");
			request.setAttribute("status", "the password and Confirm password does not match");
			dispatcher.forward(request, response);
		}
		
	}

}
