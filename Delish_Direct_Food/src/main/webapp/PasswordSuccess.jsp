<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Changed - Food Delivery App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 600px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
            margin-bottom: 20px;
        }
        .back-link {
            display: inline-block;
            font-size: 16px;
            color: #3498db;
            text-decoration: none;
            transition: color 0.3s ease-in-out;
        }
        .back-link:hover {
            color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Password Changed Successfully</h1>
        <p>Your password has been updated successfully.</p>
        <p><a href="profile.html" class="back-link">Back to Profile</a></p>
    </div>
</body>
</html>
