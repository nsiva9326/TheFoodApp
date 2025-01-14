package com.food.DAOImp;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food.DAO.OrderDAO;
import com.food.model.Order;
import com.food.model.Restaurant;

public class OrderDAOImp implements OrderDAO {
	

	String url="jdbc:mysql://localhost:3306/online_food_delivery";
	String username="root";
	String password="root";
	Connection  connection = null;

	public OrderDAOImp() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection(url,username,password);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	@Override
	public void addOrder(Order order) {
		String sql = "INSERT INTO `order` (`user_id`,`restaurant_id`,`total_amount`,`status`,payment_method) VALUES(?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
//			pstmt.setInt(1, order.getOrderId());
			pstmt.setInt(1, order.getUserId());
			pstmt.setInt(2, order.getRestaurantId());
//			pstmt.setDate(, (Date) order.getOrderDate());
			pstmt.setDouble(3, order.getTotalAmount());
			pstmt.setString(4, order.getStatus());
			pstmt.setString(5, order.getPaymentMethod());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Order getOrder(int orderId) {
		String sql="SELECT * FROM order WHERE order_id = ?";
		Order order = null;
			try {
				PreparedStatement pstmt=connection.prepareStatement(sql);
				pstmt.setInt(1, orderId);
		
				ResultSet res=pstmt.executeQuery();
				if (res.next()) {
					order =extractOrderFromResultSet(res);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return order;
	}

	private Order extractOrderFromResultSet(ResultSet res)  {
		Order order = new Order();
		
		try {
			order.setOrderId(res.getInt("order_id"));
			order.setUserId(res.getInt("user_id"));
			order.setRestaurantId(res.getInt("restaurant_id"));
			order.setOrderDate(res.getDate("order_date"));
			order.setTotalAmount(res.getDouble("total_amount"));
			order.setStatus(res.getString("status"));
			order.setPaymentMethod(res.getString("payment_method"));

		} catch (Exception e) {
			// TODO: handle exception
		}

		return order;
	}

	@Override
	public void updateOrder(Order order)  {
//		String sql="UPDATE order SET name = ?, order_id = ?,user_id = ?, restaurant_id = ? order_date = ? WHERE restaurant_id = ?";
		String sql="UPDATE order SET  total_amount, status,payment_method WHERE = order_id?";

		PreparedStatement pstmt;
		
			try {
				pstmt = connection.prepareStatement(sql);
				pstmt.setDouble(1, order.getTotalAmount());
				pstmt.setString(2, order.getStatus());
				pstmt.setString(3, order.getPaymentMethod());
				
				
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//				pstmt.setInt(1, order.getOrderId());
//				pstmt.setInt(2, order.getUserId());
//				pstmt.setInt(3, order.getRestaurantId());
//				pstmt.setDate(4, (Date) order.getOrderDate());
//				pstmt.setInt(5, restaurant.getAdminUserId());
		
	}

	@Override
	public void deleteOrder(int orderId) {
	String sql="DELETE FROM order  WHERE order_id = ? ";
		
		
		try {
			PreparedStatement pstmt =connection.prepareStatement(sql);
			pstmt.setInt(1, orderId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Order> getAllOrdersByUser(int userId) {
		String sql="SELECT * FROM order";
		ArrayList<Order> orders =new ArrayList<>();
	 
		Order order = null;
		
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			ResultSet res=pstmt.executeQuery();
			
			while (res.next()) 
			{
				order = extractOrderFromResultSet(res);
				orders.add(order);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orders ;
	}

}
