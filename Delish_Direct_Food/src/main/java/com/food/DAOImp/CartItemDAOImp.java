package com.food.DAOImp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.food.DAO.CartItemDAO;
import com.food.model.CartItem;

public class CartItemDAOImp implements CartItemDAO{
	
	String url="jdbc:mysql://localhost:3306/online_food_delivery";
	String username="root";
	String password="root";
	Connection  connection = null;

	public CartItemDAOImp() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection(url,username,password);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	@Override
	public void addCartItem(CartItem cartItem) {
		
	}

	@Override
	public CartItem getCartItem(CartItem cartItem) {
		return null;
	}

	@Override
	public void updateCartItem(CartItem cartItem) {
		
	}

	@Override
	public void deleteCartItem(CartItem cartItem) {
		
	}

	@Override
	public List<CartItem> getAllCartItem() {
		return null;
	}

}
