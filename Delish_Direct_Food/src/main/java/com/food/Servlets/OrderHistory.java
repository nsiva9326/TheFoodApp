package com.food.Servlets;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.food.DAO.OrderDAO;
import com.food.DAOImp.OrderDAOImp;
import com.food.model.Order;
import com.food.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet("/orderHistory")
public class OrderHistory extends HttpServlet {
    private static final long serialVersionUID = 1L;

   private  OrderDAO orderDAO;
   
   @Override
public void init() throws ServletException {
	orderDAO = new OrderDAOImp();
}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
    	HttpSession session = request.getSession();
    	User user = (User) session.getAttribute("loggedInUser");
    	if (user != null) 
    	{
			List<Order> orderHistory = orderDAO.getAllOrdersByUser(user.getUserId());
			request.setAttribute("orderHistory", orderHistory);
			RequestDispatcher dispatcher = request.getRequestDispatcher("OrderHistory.jsp");
			dispatcher.forward(request,response);
		} else 
				{
			
			response.sendRedirect("Login.jsp");
		}
    }
}
