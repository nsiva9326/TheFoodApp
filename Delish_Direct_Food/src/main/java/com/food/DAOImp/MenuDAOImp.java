
package com.food.DAOImp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food.DAO.MenuDAO;
import com.food.model.Menu;

public class MenuDAOImp implements MenuDAO {
    String url = "jdbc:mysql://localhost:3306/online_food_delivery";
    String username = "root";
    String password = "root";
    Connection connection = null;

    public MenuDAOImp() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addMenu(Menu menu) {
        String sql = "INSERT INTO `menu` (`restaurant_id`, `item_name`, `description`,` price`, `is_available`, `img_path`) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, menu.getRestaurantId());
            pstmt.setString(2, menu.getItemName());
            pstmt.setString(3, menu.getDescription());
            pstmt.setDouble(4, menu.getPrice());
            pstmt.setBoolean(5, menu.getIsAvaliable());
            pstmt.setString(6, menu.getImagPath());

            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Menu getMenu(int menuId) {
        String sql = "SELECT * FROM `menu` WHERE `menu_id` = ?";
        Menu menu = null;
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, menuId);
            ResultSet res = pstmt.executeQuery();

            if (res.next()) {
                menu = extractMenuFromResultSet(res);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menu;
    }

    private Menu extractMenuFromResultSet(ResultSet res) throws SQLException {
        Menu menu = new Menu();

        menu.setMenuId(res.getInt("menu_id"));
        menu.setRestaurantId(res.getInt("restaurant_id"));
        menu.setItemName(res.getString("item_name"));
        menu.setDescription(res.getString("description"));
        menu.setPrice(res.getDouble("price"));
        menu.setIsAvaliable(res.getBoolean("is_available"));
        menu.setImagPath(res.getString("img_path"));

        return menu;
    }

    @Override
    public void updateMenu(Menu menu) {
        String sql = "UPDATE `menu` SET `restaurant_id` = ?, `item_name` = ?, `description` = ?, `price` = ?, `is_available` = ?, `img_path` = ? WHERE `menu_id` = ?";
        PreparedStatement pstmt;

        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, menu.getRestaurantId());
            pstmt.setString(2, menu.getItemName());
            pstmt.setString(3, menu.getDescription());
            pstmt.setDouble(4, menu.getPrice());
            pstmt.setBoolean(5, menu.getIsAvaliable());
            pstmt.setString(6, menu.getImagPath());
            pstmt.setInt(7, menu.getMenuId());

            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteMenu(int menuId) {
        String sql = "DELETE FROM `menu` WHERE `menu_id` = ?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, menuId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Menu> getAllMenusByRestaurant(int restaurantId) {
        String sql = "SELECT * FROM `menu` WHERE `restaurant_id` = ?";
        List<Menu> list = new ArrayList<>();

        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, restaurantId);
            ResultSet res = pstmt.executeQuery();

            while (res.next()) {
                Menu menu = extractMenuFromResultSet(res);
                list.add(menu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}


