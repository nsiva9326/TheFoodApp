package com.food.DAOImp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food.DAO.UserDAO;
import com.food.model.Restaurant;
import com.food.model.User;

public class UserDAOImp1 implements UserDAO {
	
	String url="jdbc:mysql://localhost:3306/online_food_delivery";
	String username="root";
	String password="root";
	Connection connection=null;

	public UserDAOImp1() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

	
	public int addUser(User user) {
		String sql="INSERT INTO `User`(`username`,`password`,`email`,`address`,`role`) VALUES(?,?,?,?,?)";
		
		try {
			
			PreparedStatement pstmt=connection.prepareStatement(sql);
//			pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.getEmail());
			pstmt.setString(4,user.getAddress());
			pstmt.setString(5,user.getRole());
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) 
		
		{
			e.printStackTrace();
			
		}
		return 0;
		
	}

	@Override
	public User getUser(String email) {
		String sql = "SELECT * FROM user WHERE email = ?";
		
		User user = null;
		
		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,email);
			
			ResultSet res = pstmt.executeQuery();
			
			if (res.next()) 
			{
				user = extractUserFromResultSet(res);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}

	private User extractUserFromResultSet(ResultSet res) throws Exception {
		
		User user = new User();
		
		user.setUserId(res.getInt("user_id"));
        user.setUserName(res.getString("username"));
        user.setPassword(res.getString("password"));
        user.setEmail(res.getString("email"));
        user.setAddress(res.getString("address"));
        user.setRole(res.getString("role"));
    
		return user;
	}

	@Override
	public void updateUser(User user) {
		String sql="UPDATE User SET username = ?,password = ? , "
				+ "email =?,address =?,role = ? WHERE user_id= ?";
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
//			pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.getEmail());
			pstmt.setString(4,user.getAddress());
			pstmt.setString(5,user.getRole());
			pstmt.setInt(6,user.getUserId());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteUser(int userId) {
		String sql="DELETE FROM user WHERE user_id = ? ";
		
		
		try {
			PreparedStatement pstmt =connection.prepareStatement(sql);
			pstmt.setInt(1, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

	@Override
	public List<User> getAllUser() {
		String sql="SELECT * FROM user ";
		ArrayList<User> user = new ArrayList();
	 
		User user1 = null;
		
		try {
			PreparedStatement pstmt=connection.prepareStatement(sql);
			ResultSet res = pstmt.executeQuery();
			
			while (res.next()) 
			{
//				user1 = extractUserFromResultSet(res);
//				user.add(user1);
				user.add(extractUserFromResultSet(res));
			}
		}
			catch (Exception e) {
				
					e.printStackTrace();
				}
				
		return user;
	}

}
