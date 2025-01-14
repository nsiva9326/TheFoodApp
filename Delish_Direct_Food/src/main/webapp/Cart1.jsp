<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, com.food.model.Cart, com.food.model.CartItem, com.food.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Shopping Cart</title>
<style>
    /* Basic styling for better visualization */
    .cart-item { border: 1px solid #ddd; padding: 10px; margin: 10px 0; }
    .remove-btn { color: red; }
    .btn { display: inline-block; padding: 10px 20px; margin-top: 20px; text-decoration: none; background-color: #5cb85c; color: white; }
    .proceed-to-checkout-btn { background-color: #007bff; color: white; }
</style>
</head>
<body>
 <header class="animate__animated animate__fadeInDown">
        <nav>
            <a href="Home.jsp"><div class="logo animate__animated animate__bounce">
            
            </div></a>
            <ul>
                <% 
                User user = (User) session.getAttribute("loggedInuser");
                if(user != null) {
                %>
                <li><a>Welcome, <%=user.getUserName()%>!</a></li>
                <li><a href="restaurant">Restaurants</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="orderHistory">Order History</a></li>
                <li><a href="logout" class="login-btn">Logout</a></li>
                <%
                } else {
                %>
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="Login.jsp" class="login-btn">Login</a></li>
                <li><a href="Registration.jsp" class="signup-btn">SignUp</a></li>  
                <%
                }
                %>
            </ul>
        </nav>
    </header>
	<div calss="container animate_animated animate_fadeInUp">
    <h1>Your Shopping Cart</h1>
    <div class="cart-items">
    
    
        <% 
            // Retrieve the cart from the session
            Cart cart = (Cart) session.getAttribute("cart");
            
            // Check if the cart is not null and has items
            if (cart != null && !cart.getItems().isEmpty()) {
                // Loop through each item in the cart
                for (CartItem item : cart.getItems().values()) {
        %>
        <div class="cart-item">
            <h3><%= item.getName() %></h3>
            <p>Price: &#x20B9;<%= item.getPrice() %></p>
            <form action="cart" method="post">
                <input type="hidden" name="itemId" value="<%= item.getItemId()%>">
                <label> Quantity: <input type="number" name="quantity" value="<%= item.getQuantity() %>" min="1"></label>
                <input type="submit" name="action" value="add" class="btn add-btn">
                <input type="submit" name="action" value="update" class="btn update-btn">
                <input type="submit" name="action" value="remove" class="btn remove-btn">
            </form>
        </div>
        <% 
                }
            } else {
        %>
        <p>Your cart is empty.</p>
        <% 
           } 
        %>
    </div>
	<%-- Add more Items Button --%>
	
   <%
        Integer restaurantId = (Integer) session.getAttribute("restaurantId");
        if (restaurantId != null) {
        %>
        <a href="menu?restaurantId=<%= restaurantId %>" class="btn add-more-items-btn animate__animated animate__bounceIn">Add More Items</a>
        <%
        } else {
        %>
        <p>Unable to retrieve restaurant menu.</p>
        <%
        }
        %>
    
        <%-- Proceed to Checkout Button --%>
        <%
        if (cart != null && user != null) {
        %>
        <form action="Checkout.jsp" method="post">
            <input type="submit" value="Proceed to Checkout" class="btn proceed-to-checkout-btn animate__animated animate__fadeInUp">
        </form>
        <%
        } else if (user == null) {
            response.sendRedirect("Login.jsp");
        }
        %>
    </div>
    <script type="text/javascript" >
    
    document.addEventListener('DOMContentLoaded', () => {
        const cartItemsContainer = document.getElementById('cart-items');
        const totalElement = document.getElementById('total');
        const cartCount = document.getElementById('cart-count');
        let cart = JSON.parse(localStorage.getItem('cart')) || [];

        function renderCartItems() {
            cartItemsContainer.innerHTML = '';
            let total = 0;

            cart.forEach((item, index) => {
                total += parseFloat(item.price);
                const cartItem = document.createElement('div');
                cartItem.classList.add('cart-item');

                cartItem.innerHTML = `
                    <img src="${item.img || 'default.jpg'}" alt="${item.name}">
                    <h3>${item.name}</h3>
                    <p>₹${item.price}</p>
                    <button class="remove-from-cart" data-index="${index}">Remove</button>
                ;

                cartItemsContainer.appendChild(cartItem);
            });

            totalElement.textContent = total.toFixed(2);
            if (cartCount) {
                cartCount.textContent = cart.length;
            }

            document.querySelectorAll('.remove-from-cart').forEach(button => {
                button.addEventListener('click', (event) => {
                    const index = event.target.getAttribute('data-index');
                    cart.splice(index, 1);
                    localStorage.setItem('cart', JSON.stringify(cart));
                    renderCartItems();
                });
            });
        }

        renderCartItems();
    });

    
    </script>
</body>
</html>
