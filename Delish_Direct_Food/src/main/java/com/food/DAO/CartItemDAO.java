package com.food.DAO;

import java.util.List;

import com.food.model.CartItem;

	public interface CartItemDAO {
		
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(CartItem cartItem);
	 void updateCartItem(CartItem cartItem);
	 void deleteCartItem(CartItem cartItem);
	 List<CartItem> getAllCartItem();
}
