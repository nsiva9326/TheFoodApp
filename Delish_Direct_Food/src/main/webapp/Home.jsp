<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List, com.food.model.Restaurant" %>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Delivery App</title>
    <link rel="stylesheet" href="Home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        /* Dark Theme Styles */
        body.dark-theme {
            background-color: #121212;
            color: #ffffff;
        }

        .dark-theme .nav {
            background-color: #1f1f1f;
        }

        .dark-theme .nav ul li a {
            color: #ffffff;
        }

        .dark-theme .nav .logo h1 {
            color: #ffffff;
        }

        .dark-theme .search-container input {
            background-color: #333333;
            color: #ffffff;
        }

        .dark-theme .search-container button {
            background-color: #555555;
        }

        .dark-theme .content-left {
            background-color: #1f1f1f;
        }

        .dark-theme .content-left h2,
        .dark-theme .content-left p {
            color: #ffffff;
        }

        .dark-theme .card-list .restaurant {
            background-color: #1f1f1f;
            color: #ffffff;
        }

        .dark-theme .footer-content {
            background-color: #1f1f1f;
            color: #ffffff;
        }
        
        
        
        
        
        
        
        
        
        
        
        
         /* Global Styles */
        /* body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        } */
        /* .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        } */
        section h1 {
            text-align: center;
            color: #333;
        }

        /* Menu Item Styles */
        .menu {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 50px;
            justify-items: center;
            padding: 60px; /* Added padding to center items */
        }
        .menu-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            transition: transform 0.3s ease-in-out;
            width: 100%; /* Ensure each item takes full width */
            max-width: 300px; /* Limiting maximum width of each item */
        }
        .menu-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .menu-item img {
            width: auto;
            max-width: 100%; /* Make sure images are responsive */
            height: auto;
            border-radius: 8px 8px 0 0; /* Adjusted border-radius */

            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 10px;
        }
        .menu-item-details {
            flex: 1;
            width: 100%;
            padding: 10px;
        }
        .menu-item-details h2 {
            margin-top: 0;
            color: #333;
        }
        .menu-item-details p {
            color: #666;
            margin: 5px 0;
        }
        .menu-item-details .price {
            color: #e74c3c;
            font-weight: bold;
            font-size: 1.2em;
        }
        .menu-item-details .rating {
            color: #f39c12;
            font-weight: bold;
        }
        .menu-item-details .availability {
            color: #27ae60;
            font-weight: bold;
        }
        .menu-item-details .timing {
            color: #3498db;
            font-weight: bold;
        }
        .view-btn {
            display: inline-block;
            padding: 8px 16px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 10px; /* Adjusted margin */
        }
        .view-btn:hover {
            background-color: #2980b9;
        }
        .view-menu-btn {
            display: block;
            width: fit-content;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .view-menu-btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<form action="home" method="post">
    <section class="menu">
        <div class="nav">
            <div class="logo"><h1>Delish<b>Direct</b></h1></div>
            <ul>
                <li><a class="active" href="#">Home</a></li>
                <li><a href="Menu.jsp">Menu</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="about.html">About us</a></li>
                <li><a href="#">Gallery</a></li>
                <li><a href="Cart1.jsp">Cart</a></li>
            </ul>
            <div>
               <a href="Login.jsp"><input class="signin" type="button" value="Sign In"></a>
               <a href="Registration.jsp"><input class="signup" type="button" value="Sign Up"></a>
               <a href="Profile.jsp"><input class="profile" type="button" value="Profile"></a>

               <!-- Theme switcher -->
               <div class="theme-switcher">
                    <label for="themeToggle">Dark Theme:</label>
                    <label class="switch">
                        <input type="checkbox" id="themeToggle">
                        <span class="slider"></span>
                    </label>
               </div>
            </div>
        </div>
    </section>

    <!-- Search Bar Section -->
    <section class="search-bar">
        <div class="search-container">
            <input type="text" placeholder="Search for food..." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </div>
    </section>

    <marquee behavior="scroll" direction="left" scrollamount="30">
        <h1>Welcome to DelishDirect<br>Treat Yourself to Deliciousness Anytime</h1>
    </marquee>
            
    <section class="grid">
        <div class="content">
            <div class="content-left">
                <div class="info">
                    <h2>Treat Yourself to <br>Deliciousness Anytime</h2>
                    <p><b>Dive into a world of taste sensations<br> Fresh food, right where you need it, every time.</b></p>
                </div>
                <button>Taste Adventure Awaits</button>
            </div>
            <div class="content-right">
                <img src='image/fruits.jpg' alt="">
            </div>
        </div>
    </section>
    
    <section class="category">
        <div class="list-items">
            <h3>Popular Dishes</h3>
            <div class="card-list">
                <%
                    @SuppressWarnings("unchecked")
                    List<Restaurant> restaurantList = (List<Restaurant>)session.getAttribute("restuarantsList");
                    if(restaurantList != null){
                        for(Restaurant restaurant : restaurantList){
                %>
                <div class="restaurant">
                    <img src="images/<%=restaurant.getImagePath() %>" 
                        alt="Image of <%=restaurant.getName() %>">
                    <h3><%=restaurant.getName() %></h3>
                    <p><%=restaurant.getCuisineType() %>
                    <%=restaurant.getDeliveryTime() %>mins</p>
                    <a href="menu?restaurantId=<%= restaurant.getRestaurantId()%>">view menu</a>
                </div>
                <% 
                    }
                    }else{
                %>
                <p>No restaurant available</p> 
                <%
                    }
                %>
            </div>
            
           
            
        </div>
    </section>
    
    <section>
    
    <div class="container">
        <h1>Restaurant Menu</h1>
        
        <!-- Menu Items -->
        <div class="menu">
            <div class="menu-item">
                <img src="image/DeliciousBurger.jpg" alt="Delicious Burger">
                <div class="menu-item-details">
                    <h2>Delicious Burger</h2>
                    <p>Juicy beef patty with fresh veggies, cheese, and special sauce.</p>
                    <p class="price">$9.99</p>
                    <p class="rating">Rating: 4.5/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 11:30 AM - 10:00 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Garmetpizz.jpg" alt="Gourmet Pizza">
                <div class="menu-item-details">
                    <h2>Gourmet Pizza</h2>
                    <p>Thin-crust pizza topped with premium ingredients and herbs.</p>
                    <p class="price">$12.50</p>
                    <p class="rating">Rating: 4.2/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 11:45 AM - 10:00 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Fresh Salad.jpg" alt="Fresh Salad">
                <div class="menu-item-details">
                    <h2>Fresh Salad</h2>
                    <p>Mixed greens with cherry tomatoes, cucumbers, and balsamic dressing.</p>
                    <p class="price">$7.99</p>
                    <p class="rating">Rating: 4.0/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 12:00 PM - 9:30 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Italian Pasta.jpg" alt="Italian Pasta">
                <div class="menu-item-details">
                    <h2>Italian Pasta</h2>
                    <p>Al dente pasta tossed in rich tomato sauce with basil and parmesan.</p>
                    <p class="price">$10.99</p>
                    <p class="rating">Rating: 4.3/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 12:15 PM - 9:45 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Sushi Platter.jpg" alt="Sushi Platter">
                <div class="menu-item-details">
                    <h2>Sushi Platter</h2>
                    <p>Assorted sushi rolls with soy sauce, wasabi, and pickled ginger.</p>
                    <p class="price">$14.99</p>
                    <p class="rating">Rating: 4.6/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 11:00 AM - 10:00 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Tacos.jpg" alt="Tacos">
                <div class="menu-item-details">
                    <h2>Tacos</h2>
                    <p>Corn tortillas filled with seasoned beef, lettuce, salsa, and cheese.</p>
                    <p class="price">$8.99</p>
                    <p class="rating">Rating: 4.4/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 11:30 AM - 9:00 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Fruit Smoothie.jpg" alt="Fruit Smoothie">
                <div class="menu-item-details">
                    <h2>Fruit Smoothie</h2>
                    <p>Fresh fruit blended with yogurt and honey, refreshing and nutritious.</p>
                    <p class="price">$5.99</p>
                    <p class="rating">Rating: 4.2/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 10:00 AM - 7:15 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Ramen Noodles.jpg" alt="Ramen Noodles">
                <div class="menu-item-details">
                    <h2>Ramen Noodles</h2>
                    <p>Japanese noodle soup with savory broth, pork, egg, and vegetables.</p>
                    <p class="price">$11.50</p>
                    <p class="rating">Rating: 4.1/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 12:00 PM - 9:30 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Chocolate Cake.jpg" alt="Chocolate Cake">
                <div class="menu-item-details">
                    <h2>Chocolate Cake</h2>
                    <p>Rich chocolate cake with layers of ganache and chocolate frosting.</p>
                    <p class="price">$6.99</p>
                    <p class="rating">Rating: 4.3/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 10:00 AM - 8:00 PM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
            
            <div class="menu-item">
                <img src="image/Fluffy Pancakes.jpg" alt="Pancakes">
                <div class="menu-item-details">
                    <h2>Pancakes</h2>
                    <p>Fluffy pancakes served with maple syrup and butter.</p>
                    <p class="price">$7.50</p>
                    <p class="rating">Rating: 4.0/5</p>
                    <p class="availability">Available: Yes</p>
                    <p class="timing">Timing: 8:00 AM - 11:30 AM</p>
                    <a href="order.html" class="view-btn">View</a>
                </div>
            </div>
        </div>

        <!-- View Full Menu Button -->
        <a href="#" class="view-menu-btn">View Full Menu</a>
    </div>
    
    
    </section>

    <!-- Footer Section -->
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 DelishDirect. All rights reserved.</p>
        </div>
    </footer>

    <script>
        $(document).ready(function() {
            $('#themeToggle').change(function() {
                if ($(this).is(':checked')) {
                    $('body').addClass('dark-theme');
                } else {
                    $('body').removeClass('dark-theme');
                }
            });
        });
    </script>
</body>
</html>
