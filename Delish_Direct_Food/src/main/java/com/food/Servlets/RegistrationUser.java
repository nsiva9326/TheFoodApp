package com.food.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.food.DAO.UserDAO;
import com.food.DAOImp.UserDAOImp1;
import com.food.model.User;

@WebServlet("/register")
public class RegistrationUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO userDAO;
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAO = new UserDAOImp1();
		String username, email, password,cpassword, address, role;
		
		username=request.getParameter("username");
		email=request.getParameter("email");
		password=request.getParameter("password");
		cpassword=request.getParameter("cpassword");
		address=request.getParameter("address");
		role=request.getParameter("role");
		
		
		
		if (password .equals(cpassword)) 
		{
			int x = userDAO.addUser(new User(username, password, email, address, role));
			
			if(x!=0)
			{
				response.sendRedirect("Login.jsp");
			}
			else
			{
				response.sendRedirect("failure.jsp");
			}
		}
		
		else
		{
			response.sendRedirect("passwordError.jsp");
		}
		
	}

}
