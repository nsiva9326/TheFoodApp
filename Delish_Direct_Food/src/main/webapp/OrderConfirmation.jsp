<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.food.model.Order" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Confirmation</title>
</head>
<body>
    <h1>Order Confirmation</h1>
    <% 
    Order order = (Order) session.getAttribute("order");
    if (order != null) {
    %>
    <div class="orderDetails">
        <p>Thank you for your order!</p>
        <p>Order Id: <%= order.getOrderId() %></p>
        <p>Total Amount: <%= order.getTotalAmount() %></p>
        <p>Status: <%= order.getStatus() %></p>
        <p>Payment Method: <%= order.getPaymentMethod() %></p>
    </div>
    <% 
    } else { 
    %> 
    <p>Order details are not available at the moment.</p>
    <% 
    } 
    %>
</body>
</html>
