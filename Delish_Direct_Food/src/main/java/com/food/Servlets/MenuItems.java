package com.food.Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.food.DAO.MenuDAO;
import com.food.DAOImp.MenuDAOImp;
import com.food.model.Menu;

/**
 * Servlet implementation class MenuItems
 */
@WebServlet("/menu")
public class MenuItems extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MenuDAO menuDAO;
	
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int restaurantId = Integer.parseInt(request.getParameter("restaurantId"));
		System.out.println(restaurantId);
		if(restaurantId != 0)
		{
			try {
				MenuDAOImp menuDAOImp = new MenuDAOImp();
				List<Menu> menuList = menuDAOImp.getAllMenusByRestaurant(restaurantId);
				System.out.println("menuList" + menuList);
				
				HttpSession  session = request.getSession();
				request.setAttribute("menuList", menuList);
				System.out.println(menuList);
				request.getRequestDispatcher("Menu.jsp").forward(request, response);
			}
			catch(NumberFormatException e)
			{
				response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid restaurant id");
			}
			
			
		
		}
		
	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
    
    
////    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    	
//    	 int restuarantId = Integer.parseInt(req.getParameter("restuarantId"));
//    	 System.out.println("restuarantId");
//    	 
//    
//    }
    
//    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	
//        // Dummy data for menu items (replace with actual logic to fetch from DB/service)
//        List<Menu> menuItems = new ArrayList<>();
//        
//        
//        
////        menuItems.add("Pizza");
////        menuItems.add("Burger");
////        menuItems.add("Sushi");
//        
//        // Set the menuItems list as an attribute in the request
//        request.setAttribute("menuItems", menuItems);
//        
//        // Forward the request to the JSP page
//        request.getRequestDispatcher("menu.jsp").forward(request, response);
//    }
}
    
   



