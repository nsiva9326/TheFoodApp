<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout - Food Delivery App</title>
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
            max-width: 500px;
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
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }
        p {
            font-size: 20px;
            color: #666;
            margin-bottom: 30px;
            line-height: 1.6;
        }
        .home-link {
            display: inline-block;
            padding: 12px 24px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
            font-size: 18px;
            transition: background-color 0.3s ease-in-out;
        }
        .home-link:hover {
            background-color: #2980b9;
        }
        .logo {
            margin-bottom: 30px;
        }
        .logo img {
            max-width: 150px; /* Adjust size as needed */
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Logged Out Successfully</h1>
        <p>Your account has been successfully logged out.</p>
        <a class="home-link" href="Home.jsp">Back to Home</a>
    </div>
</body>
</html>
    