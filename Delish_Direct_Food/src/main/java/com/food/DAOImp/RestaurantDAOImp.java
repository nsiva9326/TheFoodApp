package com.food.DAOImp;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.food.DAO.RestaurantDAO;
import com.food.model.Restaurant;

public class RestaurantDAOImp  implements RestaurantDAO{
	
	String url="jdbc:mysql://localhost:3306/online_food_delivery";
	String username="root";
	String password="root";
	Connection  connection = null;

	public RestaurantDAOImp() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection(url,username,password);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
		
	public void addRestaurant(Restaurant restaurant) {
		String sql = "INSERT INTO `restaurant` (`name`,`cuisine_type`,`delivery_time`,`address`,`rating`,`is_Active`) VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, restaurant.getName());
			pstmt.setString(2, restaurant.getCuisineType());
			pstmt.setInt(3, restaurant.getDeliveryTime());
			pstmt.setString(4, restaurant.getAddress());
//			pstmt.setInt(5, restaurant.getAdminUserId());
			pstmt.setDouble(5, restaurant.getRating());
			pstmt.setBoolean(6, restaurant.isActive());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Restaurant getRestaurant(int restaurantId) {
		String sql="SELECT * FROM restaurant WHERE restaurant_id = ?";
		Restaurant restaurant = null;
			try {
				PreparedStatement pstmt=connection.prepareStatement(sql);
				pstmt.setInt(1, restaurantId);
				
				ResultSet res=pstmt.executeQuery();
				if (res.next()) {
					restaurant =extractRestauarantFromResultSet(res);
				}
			} catch (SQLException e) {
		
				e.printStackTrace();
			}
		return restaurant;
	}

	private Restaurant extractRestauarantFromResultSet(ResultSet res) throws SQLException {
		Restaurant restaurant = new Restaurant();
		
		restaurant.setRestaurantId(res.getInt("restaurant_id"));
		restaurant.setName(res.getString("name"));
		restaurant.setCuisineType(res.getString("cuisine_type"));
		restaurant.setDeliveryTime(res.getInt("delivery_time"));
		restaurant.setAddress(res.getString("address"));
		restaurant.setAdminUserId(res.getInt("admin_user_id"));
		restaurant.setRating(res.getDouble("Rating"));
		restaurant.setActive(res.getBoolean("is_Active"));
		restaurant.setImagePath(res.getString("imgpath"));

		
		return restaurant;
	}
	@Override
	public void updateRestaurant(Restaurant restaurant)  {
		String sql="UPDATE restaurant SET name = ?, cuisine_type = ?,delivery_time = ?, `address`= ? , rating = ? is_Active = ? WHERE restaurant_id = ?";
		PreparedStatement pstmt = null;

		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, restaurant.getName());
			pstmt.setString(2, restaurant.getCuisineType());
			pstmt.setInt(3, restaurant.getDeliveryTime());
			pstmt.setString(4, restaurant.getAddress());
			pstmt.setInt(5, restaurant.getAdminUserId());
			pstmt.setDouble(5, restaurant.getRating());
			pstmt.setBoolean(6, restaurant.isActive());
			pstmt.setInt(7, restaurant.getRestaurantId());
//			pstmt.setString(8,restaurant.getImagePath());
				
			


		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void deleteRestaurant(int restaurantId) {
		String sql="DELETE FROM restaurant  WHERE restaurant_id = ?";
		
		
		try {
			PreparedStatement pstmt =connection.prepareStatement(sql);
			pstmt.setInt(1, restaurantId);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Restaurant> getAllRestaurants() {
		String sql="SELECT * FROM restaurant";
		ArrayList<Restaurant> restaurants =new ArrayList<>();
	 
		Restaurant restaurant = null;
		
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			ResultSet res=pstmt.executeQuery();
			
			while (res.next()) 
			{
				restaurant = extractRestauarantFromResultSet(res);
				restaurants.add(restaurant);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return restaurants ;
	}

}
