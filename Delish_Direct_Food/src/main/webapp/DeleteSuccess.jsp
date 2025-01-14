<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Deleted - Food Delivery App</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            max-width: 600px;
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: slide-up 0.5s ease-out;
        }
        @keyframes slide-up {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        h1 {
            font-size: 28px;
            color: #333;
            margin-bottom: 30px;
            font-weight: bold;
        }
        p {
            font-size: 20px;
            color: #666;
            margin-bottom: 40px;
        }
        .delete-button {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 18px 32px;
            font-size: 20px;
            cursor: pointer;
            border-radius: 10px;
            transition: background-color 0.3s ease-in-out;
            width: 100%;
            max-width: 300px;
            margin: 0 auto;
            display: block;
            text-transform: uppercase;
            text-decoration: none; /* Remove underline for anchor tags */
            line-height: 1; /* Adjust button height */
            text-align: center; /* Center text */
        }
        .delete-button:hover {
            background-color: #c0392b;
        }
        .home-link {
            margin-top: 20px;
            display: inline-block;
            font-size: 18px;
            color: #3498db;
            text-decoration: none;
            transition: color 0.3s ease-in-out;
        }
        .home-link:hover {
            color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Deleted</h1>
        <p>Your account has been successfully deleted.</p>
        <a class="delete-button" href="Home.jsp">Back to Home</a>
    </div>
</body>
</html>
