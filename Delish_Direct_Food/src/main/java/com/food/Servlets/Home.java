package com.food.Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.food.DAO.RestaurantDAO;
import com.food.DAOImp.RestaurantDAOImp;
import com.food.model.Restaurant;

/**
 * Servlet implementation class Home
 */
@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       RestaurantDAO restuarantDAO;
       
       
       @Override
    	public void init() throws ServletException {
    	   restuarantDAO=new RestaurantDAOImp();
    	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Restaurant> restuarantsList = restuarantDAO.getAllRestaurants();
		
		
		 HttpSession session=request.getSession();
		 
		 session.setAttribute("restuarantsList", restuarantsList);
		 response.sendRedirect("Home.jsp");
		 
		 
//		 RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
//		 dispatcher.include(request,response);
		 
	}

}
