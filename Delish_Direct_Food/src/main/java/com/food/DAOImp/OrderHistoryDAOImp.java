package com.food.DAOImp;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food.DAO.OrderHistoryDAO;
import com.food.model.OrderHistory;

public class OrderHistoryDAOImp  implements OrderHistoryDAO {
	
	String url="jdbc:mysql://localhost:3306/online_food_delivery";
	String username="root";
	String password="root";
	Connection  connection = null;

	public OrderHistoryDAOImp() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection(url,username,password);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	@Override
	public void addOrderHistory(OrderHistory orderHistory) {
		String sql = "INSERT INTO `orderhistory`(`totalAmount`,`status`) VALUES(?,?)";
//		String sql="INSERT INTO `order_history`(``status`) VALUES(?,?,?,?,?)";

		PreparedStatement pstmt = null;;
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setDouble(1, orderHistory.getTotalAmount());
			pstmt.setString(2,orderHistory.getStatus());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		pstmt=connection.prepareStatement(sql);
	}

	@Override
	public OrderHistory getOrderHistory(int orderHistoryId) {
		String sql="SELECT * FROM order_history WHERE orderHistoryId = ?";
		 OrderHistory orderHistory = null;
			try {
				PreparedStatement pstmt=connection.prepareStatement(sql);
				pstmt.setInt(1, orderHistoryId);
				ResultSet res=pstmt.executeQuery();
				
				if (res.next()) {
					orderHistory =extractOrderHistoryFromResultSet(res);
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		
		return orderHistory;
	}

	private OrderHistory extractOrderHistoryFromResultSet(ResultSet res) throws SQLException {
	OrderHistory orderHistory = new OrderHistory();
		
		orderHistory.setUserId(res.getInt("userId"));
		orderHistory.setOrderId(res.getInt("orderId"));
		orderHistory.setOrderDate(res.getDate("date"));
		orderHistory.setTotalAmount(res.getInt("totalAmount"));
		orderHistory.setStatus(res.getString("status"));
		orderHistory.setOrderHistoryId(res.getInt("orderHistoryId"));

		return orderHistory;
		
	}

	@Override
	public void updateOrderHistory(OrderHistory orderHistory) {

		String sql="UPDATE orderistory SET  userId = ? orderId = ?,  orderDate = ? , totalAmount = ?,status = ?, WHERE orderHistoryId = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(sql);
				pstmt.setInt(1, orderHistory.getUserId());
				pstmt.setInt(2, orderHistory.getOrderId());
				pstmt.setDate(3, (Date) orderHistory.getOrderDate());
	
				pstmt.setDouble(4, orderHistory.getTotalAmount());
				pstmt.setString(5, orderHistory.getStatus());
				pstmt.setInt(6, orderHistory.getOrderHistoryId());

				
				pstmt.executeUpdate();


		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOrderHistory(int orderHistoryId) {
		String sql="DELETE FROM orderHistory  WHERE order_history_id = ? ";
		
		
		try {
			PreparedStatement pstmt =connection.prepareStatement(sql);
			pstmt.setInt(1, orderHistoryId);
		} catch (SQLException e) {
			
			
		}
	}

	@Override
	public List<OrderHistory> getOrderHistoriesByUser(int orderHistoryId) {
		String sql="SELECT * FROM orderHistory";
		ArrayList<OrderHistory> orderHistorys = new ArrayList();
	 
		OrderHistory orderHistory = null;

		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			ResultSet res=pstmt.executeQuery();
			
			while (res.next()) 
			{
				orderHistory = extractOrderHistoryFromResultSet(res);
				orderHistorys.add(orderHistory);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return orderHistorys ;
	
	}

}
