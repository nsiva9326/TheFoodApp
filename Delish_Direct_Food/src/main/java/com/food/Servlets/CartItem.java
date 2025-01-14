
package com.food.Servlets;

public class CartItem {
	
	private int item_id;
	private int restaurant_id;
	private String name;
	private int quantity;
	private double price;
	
	public CartItem()
	{
		
	}

	public CartItem(int item_id, int restaurant_id, String name, int quantity, double price) {
		super();
		this.item_id = item_id;
		this.restaurant_id = restaurant_id;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
	}

	public int getItem_id() {
		return item_id;
	}

	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	public int getRestaurant_id() {
		return restaurant_id;
	}

	public void setRestaurant_id(int restaurant_id) {
		this.restaurant_id = restaurant_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "CartItem [item_id=" + item_id + ", restaurant_id=" + restaurant_id + ", name=" + name + ", quantity="
				+ quantity + ", price=" + price + "]";
	}
	
}





//package com.food.Servlets;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.Map;
//
//@WebServlet("/cart")
//public class CartItems extends HttpServlet {
//
//    @Override
//    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Action to perform (add or remove)
//        String action = request.getParameter("action");
//        // Item to add or remove
//        String item = request.getParameter("item");
//
//        HttpSession session = request.getSession();
//        @SuppressWarnings("unchecked")
//        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
//        if (cart == null) {
//            cart = new HashMap<>();
//        }
//
//        if ("add".equals(action)) {
//            cart.put(item, cart.getOrDefault(item, 0) + 1);
//        } else if ("remove".equals(action)) {
//            if (cart.containsKey(item)) {
//                int quantity = cart.get(item);
//                if (quantity > 1) {
//                    cart.put(item, quantity - 1);
//                } else {
//                    cart.remove(item);
//                }
//            }
//        }
//
//        session.setAttribute("cart", cart);
//        response.sendRedirect("dummy.jsp");
//    }
//}
