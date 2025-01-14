<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.food.model.Menu , java.util.ArrayList,java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Menu - Food Delivery App</title>
    <link rel="stylesheet" href=".css">
    <!-- Font Awesome for star icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .category {
            padding: 20px;
        }
        .list-items {
            text-align: center;
        }
        .card-list, .menu-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            padding: 20px;
        }
        .card, .menu-item {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .card img, .menu-item img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 10px;
        }
        .food-title h1, .menu-item h3 {
            font-size: 1.5em;
            margin: 10px 0;
        }
        .desc-food p, .menu-item p {
            font-size: 1.2em;
            color: #555;
        }
        .price {
            font-size: 1.5em;
            color: #000;
            margin: 10px 0;
        }
        .rating .fa {
            color: #ff0;
        }
        .quantity-select, .quantity {
            margin-top: 10px;
            width: 100%;
            padding: 5px;
            font-size: 1em;
        }
        .add-to-cart, .add-to-cart-btn {
            background: #28a745;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 1em;
            margin-top: 10px;
        }
        .add-to-cart-btn {
            background: #007bff;
        }
        .card:hover, .menu-item:hover {
            transform: translateY(-10px);
        }
        
        
     
    </style>
</head>
<body>
<form action="menu" method="post">
    <section class="category">
        <div class="list-items">
            <!-- Marquee for welcoming message -->
            <marquee behavior="scroll" direction="left" scrollamount="10">
                <h2>Welcome to Menu! Enjoy Our Delicious Selections</h2>
            </marquee>
            
            <h3>Popular Dishes</h3>
            <div class="card-list">
                <!-- Card 1 -->
                <div class="card">
                    <img src="image/burger.jpg" alt="Beef Burger">
                    <div class="food-title">
                        <h1>Beef Burger</h1>
                    </div>
                    <div class="desc-food">
                        <p>Juicy beef patty with fresh lettuce, tomatoes, and cheese.</p>
                    </div>
                    <div class="price">
                        <span>$10.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 2 -->
                <div class="card">
                    <img src="image/pizza.jpg" alt="Pizza">
                    <div class="food-title">
                        <h1>Pizza</h1>
                    </div>
                    <div class="desc-food">
                        <p>Delicious pizza with pepperoni, mushrooms, and extra cheese.</p>
                    </div>
                    <div class="price">
                        <span>$12.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 3 -->
                <div class="card">
                    <img src="image/sushi.jpg" alt="Sushi">
                    <div class="food-title">
                        <h1>Sushi</h1>
                    </div>
                    <div class="desc-food">
                        <p>Fresh sushi rolls with a variety of fish and vegetables.</p>
                    </div>
                    <div class="price">
                        <span>$15.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 4 -->
                <div class="card">
                    <img src="image/pasta.jpg" alt="Pasta">
                    <div class="food-title">
                        <h1>Pasta</h1>
                    </div>
                    <div class="desc-food">
                        <p>Classic Italian pasta with marinara sauce and meatballs.</p>
                    </div>
                    <div class="price">
                        <span>$11.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>
                
                
                
                
                
                
                
                
                 <!-- Repeat for other cards -->
                <!-- Card 5 -->
                <div class="card">
                    <img src="image/greensalad.jpg" alt="Salad">
                    <div class="food-title">
                        <h1>Garden Salad</h1>
                    </div>
                    <div class="desc-food">
                        <p>Fresh greens with cherry tomatoes, cucumbers, and balsamic dressing.</p>
                    </div>
                    <div class="price">
                        <span>$8.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 6 -->
                <div class="card">
                    <img src="image/steack.png" alt="Steak">
                    <div class="food-title">
                        <h1>Grilled Steak</h1>
                    </div>
                    <div class="desc-food">
                        <p>Juicy grilled steak with mashed potatoes and seasonal vegetables.</p>
                    </div>
                    <div class="price">
                        <span>$19.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 7 -->
                <div class="card">
                    <img src="image/tacos.png" alt="Tacos">
                    <div class="food-title">
                        <h1>Tacos</h1>
                    </div>
                    <div class="desc-food">
                        <p>Authentic Mexican tacos with seasoned meat, salsa, and guacamole.</p>
                    </div>
                    <div class="price">
                        <span>$9.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 8 -->
                <div class="card">
                    <img src="image/smoothie.jpg" alt="Smoothie">
                    <div class="food-title">
                        <h1>Fruit Smoothie</h1>
                    </div>
                    <div class="desc-food">
                        <p>Refreshing blend of fresh fruits and yogurt.</p>
                    </div>
                    <div class="price">
                        <span>$6.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 9 -->
                <div class="card">
                    <img src="image/ramen.jpg" alt="Ramen">
                    <div class="food-title">
                        <h1>Ramen Noodles</h1>
                    </div>
                    <div class="desc-food">
                        <p>Japanese ramen with pork broth, noodles, and assorted toppings.</p>
                    </div>
                    <div class="price">
                        <span>$13.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>

                <!-- Repeat for other cards -->
                <!-- Card 10 -->
                <div class="card">
                    <img src="image/chacolet.jpg" alt="Dessert">
                    <div class="food-title">
                        <h1>Chocolate Cake</h1>
                    </div>
                    <div class="desc-food">
                        <p>Decadent chocolate cake with a rich ganache filling.</p>
                    </div>
                    <div class="price">
                        <span>$7.99</span><span><i class='bx bxs-plus-circle'></i></span>
                    </div>
                    <!-- Rating section -->
                    <div class="rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <div>
                        <select class="quantity-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                </div>
                
                
                <!-- Card 1 -->
                    <div class="card">
                        <img src="image/chickenwings.jpg" alt="Chicken Wings">
                        <div class="food-title">
                            <h1>Chicken Wings</h1>
                        </div>
                        <div class="desc-food">
                            <p>Spicy chicken wings served with blue cheese dip.</p>
                        </div>
                        <div class="price">
                            <span>$8.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>
                
                
                
                   <!-- Repeat for other cards -->
                    <!-- Card 2 -->
                    <div class="card">
                        <img src="image/friedrice.jpg" alt="Fried Rice">
                        <div class="food-title">
                            <h1>Fried Rice</h1>
                        </div>
                        <div class="desc-food">
                            <p>Stir-fried rice with vegetables and your choice of protein.</p>
                        </div>
                        <div class="price">
                            <span>$10.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 3 -->
                    <div class="card">
                        <img src="image/burrito.jpg" alt="Burrito">
                        <div class="food-title">
                            <h1>Burrito</h1>
                        </div>
                        <div class="desc-food">
                            <p>Flour tortilla filled with beans, rice, cheese, and your choice of meat.</p>
                        </div>
                        <div class="price">
                            <span>$9.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 4 -->
                    <div class="card">
                        <img src="image/lasagna.jpg" alt="Lasagna">
                        <div class="food-title">
                            <h1>Lasagna</h1>
                        </div>
                        <div class="desc-food">
                            <p>Layers of pasta, ricotta cheese, ground beef, and marinara sauce.</p>
                        </div>
                        <div class="price">
                            <span>$12.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 5 -->
                    <div class="card">
                        <img src="image/nachos.jpg" alt="Nachos">
                        <div class="food-title">
                            <h1>Nachos</h1>
                        </div>
                        <div class="desc-food">
                            <p>Tortilla chips topped with melted cheese, salsa, and jalapenos.</p>
                        </div>
                        <div class="price">
                            <span>$7.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 6 -->
                    <div class="card">
                        <img src="image/chickensalad.jpg" alt="Chicken Salad">
                        <div class="food-title">
                            <h1>Chicken Salad</h1>
                        </div>
                        <div class="desc-food">
                            <p>Fresh greens with grilled chicken, avocado, and creamy dressing.</p>
                        </div>
                        <div class="price">
                            <span>$11.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 7 -->
                    <div class="card">
                        <img src="image/pho.jpg" alt="Pho">
                        <div class="food-title">
                            <h1>Pho</h1>
                        </div>
                        <div class="desc-food">
                            <p>Vietnamese noodle soup with beef or chicken, fresh herbs, and lime.</p>
                        </div>
                        <div class="price">
                            <span>$14.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 8 -->
                    <div class="card">
                        <img src="image/pancake.jpg" alt="Pancakes">
                        <div class="food-title">
                            <h1>Pancakes</h1>
                        </div>
                        <div class="desc-food">
                            <p>Fluffy pancakes served with maple syrup and butter.</p>
                        </div>
                        <div class="price">
                            <span>$6.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 9 -->
                    <div class="card">
                        <img src="image/fishandchips.jpg" alt="Fish and Chips">
                        <div class="food-title">
                            <h1>Fish and Chips</h1>
                        </div>
                        <div class="desc-food">
                            <p>Crispy fish fillets served with golden fries and tartar sauce.</p>
                        </div>
                        <div class="price">
                            <span>$13.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>

                    <!-- Repeat for other cards -->
                    <!-- Card 10 -->
                    <div class="card">
                        <img src="image/cheesecake.png" alt="Cheesecake">
                        <div class="food-title">
                            <h1>Cheesecake</h1>
                        </div>
                        <div class="desc-food">
                            <p>Creamy New York-style cheesecake with a graham cracker crust.</p>
                        </div>
                        <div class="price">
                            <span>$8.99</span><span><i class='bx bxs-plus-circle'></i></span>
                        </div>
                        <!-- Rating section -->
                        <div class="rating">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <div>
                            <select class="quantity-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <button class="add-to-cart"><a href="Cart.jsp">Add to Cart</button></a>
                    </div>
             
                
                
            </div>
        </div>
    </section>
</form>
    
<section class="menu-container">
    <% 
        List<Menu> foodMenuList = (ArrayList<Menu>) request.getAttribute("menuList");
        if (foodMenuList != null) {
            for (Menu foodItem : foodMenuList) {
    %>
        <div class="menu-item">
            <img src="menuImages/<%= foodItem.getImagPath() %>" alt="<%= foodItem.getItemName() %>">
            <h3><%= foodItem.getItemName()%></h3>
            <p><%= foodItem.getDescription() %></p>
            <p>Price: $<%= foodItem.getPrice() %></p>
            <form action="Cart" method="post">
                <input type="hidden" name="menuId" value="<%= foodItem.getMenuId() %>">
                <label for="quantity_<%= foodItem.getMenuId() %>">Quantity:</label>
                <select id="quantity_<%= foodItem.getMenuId() %>" name="quantity">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <input type="hidden" name="action" value="add">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
    <% 
            }
        } else {
    %>
        <p>No menu items available</p>
    <% 
        }
    %>
</section>

</body>
</html>
