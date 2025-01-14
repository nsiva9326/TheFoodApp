package com.food.model;

public class Menu {
	private int menuId;
	private int restaurantId;
	private String itemName;
	private String description;
	private double price;
	private boolean isAvaliable;
	private String imagPath;
	public Menu()
	{
		
	}
	public Menu(int menuId, int restaurantId, String itemName, String description, double price, boolean isAvaliable) {
		super();
		this.menuId = menuId;
		this.restaurantId = restaurantId;
		this.itemName = itemName;
		this.description = description;
		this.price = price;
		this.isAvaliable = isAvaliable;
	}
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public int getRestaurantId() {
		return restaurantId;
	}
	public void setRestaurantId(int restaurantId) {
		this.restaurantId = restaurantId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public boolean getIsAvaliable() {
		return isAvaliable;
	}
	public void setIsAvaliable(boolean isAvaliable) {
		this.isAvaliable = isAvaliable;
	}
	public String getImagPath() {
		return imagPath;
	}
	public void setImagPath(String imagPath) {
		this.imagPath = imagPath;
	}
	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", restaurantId=" + restaurantId + ", itemName=" + itemName + ", description="
				+ description + ", price=" + price + ", isAvaliable=" + isAvaliable + ", imagPath=" + imagPath + "]";
	}
	
	
}
