<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.food.model.Cart, com.food.model.CartItem, com.food.DAO.*, com.food.DAOImp.*, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Shopping Cart</title>
</head>
<body>
<h1>Your Shopping Cart</h1>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart != null && !cart.getItems().isEmpty()) {
        for (CartItem item : cart.getItems().values()) {
%>

<p><%= item.getName() %></p>
<p><%= item.getPrice() %></p>

<form action="Cart" method="post">
    <input type="hidden" name="menuId" value="<%= item.getItemId() %>">
    <label>Quantity: <input type="number" name="quantity" value="<%= item.getQuantity() %>"></label>
    <input type="submit" name="action" value="update" class="update-btn">     
    <input type="submit" name="action" value="remove" class="update-btn">
</form>

<%
        }
    } else {
%>

<p>Your cart is empty</p>

<%
    }
%>

<a href="menu?restaurantId=<%= session.getAttribute("restaurantId") %>">Add more items</a>

<%
    if (cart != null && !cart.getItems().isEmpty()) {
%>
<form action="Checkout.jsp" method="post">
    <input type="submit" value="Proceed to Checkout">
</form>
<%
    }
%>

</body>
</html>
