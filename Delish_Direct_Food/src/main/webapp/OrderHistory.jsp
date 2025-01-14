<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="com.food.model.Cart,com.food.model.Order,java.util.List,javax.servlet.http.HttpSession" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History - Food Delivery App</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Order History</h2>
    
    <form action="orderHistory" method="post">
        <button type="submit">View Order History</button>
    </form>

    <% 
        HttpSession session1 = request.getSession(false);
        if (session != null) {
            List<Order> orderHistory = (List<Order>) request.getAttribute("orderHistory");
            if (orderHistory != null && !orderHistory.isEmpty()) {
    %>
                <table>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Restaurant Name</th>
                            <th>Items</th>
                            <th>Total Price</th>
                            <th>Order Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Order order : orderHistory) { %>
                            <tr>
                                <td><%= order.getOrderId() %></td>
                                <td><%= order.getRestaurantId() %></td>
                                <td>
                                    <ul>
                                        <% 
                                            // Simulating items
                                            List<Item> items = order.get; // Replace with actual method to get items
                                            if (items != null && !items.isEmpty()) {
                                                for (Item item : items) {
                                        %>
                                                    <li><%= item.getItemName() %> - <%= item.getQuantity() %> x <%= item.getPrice() %></li>
                                        <% 
                                                }
                                            } else {
                                        %>
                                                <li>No items</li>
                                        <% } %>
                                    </ul>
                                </td>
                                <td><%= order.getTotalAmount() %></td>
                                <td><%= order.getOrderDate() %></td>
                                <td><%= order.getStatus() %></td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
    <% 
            } else {
    %>
                <p>No orders found in your history.</p>
    <%
            }
        } else {
    %>
            <p>Please log in to view your order history.</p>
    <% } %>
</body>
</html>
