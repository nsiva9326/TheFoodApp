package com.food.model;

public class OrderItem {
	 private int orderItemId;
	 private int orderId;
	 private int menuId;
	 private int quantity;
	 private double itemTotal;
	 public OrderItem()
	 {
		 
	 }
	public OrderItem(int orderItemID, int ordrerId, int meniuId, int quantity, double itemTotal) {
		super();
		this.orderItemId = orderItemID;
		this.orderId = ordrerId;
		this.menuId = meniuId;
		this.quantity = quantity;
		this.itemTotal = itemTotal;
	}
	public int getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(int orderItemID) {
		this.orderItemId = orderItemID;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int ordrerId) {
		this.orderId = ordrerId;
	}
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int meniuId) {
		this.menuId = meniuId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getItemTotal() {
		return itemTotal;
	}
	public void setItemTotal(double itemTotal) {
		this.itemTotal = itemTotal;
	}
}
