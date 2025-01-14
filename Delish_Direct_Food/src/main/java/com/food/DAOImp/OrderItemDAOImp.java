package com.food.DAOImp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food.DAO.OrderItemDAO;
import com.food.model.OrderItem;


public class OrderItemDAOImp  implements OrderItemDAO{

	String url="jdbc:mysql://localhost:3306/online_food_delivery";
	String username="root";
	String password="root";
	Connection  connection = null;

		public OrderItemDAOImp() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection=DriverManager.getConnection(url,username,password);
			} catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
	
	
	@Override
	public void addOrderItem(OrderItem orderItem) {
		String sql = "INSERT INTO `orderitem` (`quantity`,itemTotal) VALUES(?,?)";

		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			pstmt.setInt(1, orderItem.getQuantity());
			pstmt.setDouble(2, orderItem.getItemTotal());
			
			pstmt.executeUpdate();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}

	@Override
	public OrderItem getOrderItem(int orderItemId) {
		String sql="SELECT * FROM orderitem WHERE orderItemID = ?";
		OrderItem orderItem = null;
			try {
				PreparedStatement pstmt=connection.prepareStatement(sql);
				pstmt.setInt(1, orderItemId);
				
				ResultSet res=pstmt.executeQuery();
				if (res.next()) {
					orderItem =extractOrderItemFromResultSet(res);
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		return orderItem;
		
	}

	private OrderItem extractOrderItemFromResultSet(ResultSet res) throws SQLException {
		OrderItem orderItem = new OrderItem();
		
		orderItem.setOrderItemId(res.getInt("orderItemID"));
		orderItem.setOrderId(res.getInt("orderId"));
		orderItem.setMenuId(res.getInt("menuId"));
		orderItem.setQuantity(res.getInt("quantity"));
		orderItem.setItemTotal(res.getDouble("itemTotal"));
		
		return orderItem;
	}


	@Override
	public void updateOrderItem(OrderItem orderItem) {
		String sql="UPDATE orderitem SET orderId = ?, menuId = ?,quantity = ?, itemTotal = ?  WHERE orderItemID = ?";
		PreparedStatement pstmt = null;
		
				try {
					pstmt = connection.prepareStatement(sql);
					pstmt.setInt(1, orderItem.getOrderId());
					pstmt.setInt(2, orderItem.getMenuId());
					pstmt.setInt(3, orderItem.getQuantity());
					pstmt.setDouble(4, orderItem.getItemTotal());
					pstmt.setInt(5, orderItem.getOrderItemId());
					
					pstmt.executeUpdate();
					
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
	}

	@Override
	public void deleteOrderItem(int orderItemId) {
	String sql="DELETE FROM orderitem  WHERE orderitemID = ? ";
		
		
		try {
			PreparedStatement pstmt =connection.prepareStatement(sql);
			pstmt.setInt(1, orderItemId);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public List<OrderItem> getOrderItemsByOrder(int orderId) {
		String sql="SELECT * FROM orderitem";
		ArrayList<OrderItem> orderItems =new ArrayList<>();
	 
		OrderItem orderItem = null;
		
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			ResultSet res=pstmt.executeQuery();
			
			while (res.next()) 
			{
				orderItem = extractOrderItemFromResultSet(res);
				orderItems.add(orderItem);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return orderItems ;
		
		
	}

}
