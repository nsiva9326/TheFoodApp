	
	
	package com.food.Servlets;
	
	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;
	
	import com.food.DAO.UserDAO;
	import com.food.DAOImp.UserDAOImp1;
	import com.food.model.User;
	
	@WebServlet("/login")
	public class Login extends HttpServlet {
	
	    private static final long serialVersionUID = 1L;
	    private UserDAO userDAO;
	
	    @Override
	    public void init() throws ServletException {
	        userDAO = new UserDAOImp1();
	    }
	
	    @Override
	    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	
	        User user = userDAO.getUser(username);
	
	        if (user != null && user.getPassword().equals(password)) {
	            HttpSession session = request.getSession();
	            session.setAttribute("loggedInuser", user);
	            response.sendRedirect("home");
	        } else {
	            request.setAttribute("errorMessage", "Invalid email or password.");
	            request.getRequestDispatcher("Login.jsp").forward(request, response);
	        }
	    }
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//package com.food.Servlets;
	//
	//import java.io.IOException;
	//import java.util.List;
	//
	//import javax.servlet.ServletException;
	//import javax.servlet.annotation.WebServlet;
	//import javax.servlet.http.HttpServlet;
	//import javax.servlet.http.HttpServletRequest;
	//import javax.servlet.http.HttpServletResponse;
	//import javax.servlet.http.HttpSession;
	//
	//import com.food.DAO.UserDAO;
	//import com.food.DAOImp.RestaurantDAOImp;
	//import com.food.DAOImp.UserDAOImp1;
	//import com.food.model.Restaurant;
	//import com.food.model.User;
	//
	///**
	// * Servlet implementation class Login
	// */
	//@WebServlet("/login")
	//public class Login extends HttpServlet {
	//	
	//	private static final long serialVersionUID = 1L;
	//	
	//	UserDAO userDAO;
	//       
	//	
	//	@Override
	//	public void init() throws ServletException {
	//		userDAO = new UserDAOImp1();
	//		
	//	}
	////	
	////    /**
	////     * @see HttpServlet#HttpServlet()
	////     */
	//    public Login() {
	//        super();
	//        // TODO Auto-generated constructor stub
	//    }
	//
	////	/**
	////	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	////	 */
	////	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	////		// TODO Auto-generated method stub
	////		response.getWriter().append("Served at: ").append(request.getContextPath());
	////	}
	////	
	////	/**
	////	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	////	 */
	////	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	////		
	////			String email = request.getParameter("email");
	////			String password = request.getParameter("password");
	////			
	////			User loggedIn = userDAO.getUser(email);
	////			
	////			if(loggedIn.getPassword() !=null && password.equals(loggedIn.getPassword()))
	////			{
	////					HttpSession session = request.getSession(true);
	////					
	////					session.setAttribute("user", loggedIn);
	////					response.sendRedirect("Home.jsp");
	////			}
	////			else 
	////			{
	////				response.sendRedirect("Login.jsp");
	////			}
	////			
	////	}
	//	    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	        String email = request.getParameter("email");
	//	        String password = request.getParameter("password");
	//	
	//	        User loggedIn = userDAO.getUser(email);
	//	
	//	        if (loggedIn != null && password.equals(loggedIn.getPassword())) {
	////	            HttpSession session = request.getSession(true);
	////	            session.setAttribute("user", loggedIn);
	//	            
	//	         
	//	        	HttpSession session = request.getSession(true);
	//	        	session.setAttribute("loginuser", loggedIn);
	//	            
	//	            response.sendRedirect("Home.jsp");
	//	            
	//	        } else {
	//	            request.setAttribute("errorMessage", "Invalid email or password.");
	//	            request.getRequestDispatcher("Login.jsp").forward(request, response);
	//	        }
	//	    }
	//
	//	
	//}
