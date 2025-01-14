<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account - Food Delivery App</title>
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
            width: 100%;
            max-width: 500px;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
            font-size: 32px;
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
            padding: 16px 28px;
            font-size: 20px;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s ease-in-out;
            width: 100%;
            max-width: 300px;
            margin: 0 auto;
            display: block;
            text-transform: uppercase;
        }
        .delete-button:hover {
            background-color: #c0392b;
        }
        .footer {
            margin-top: 30px;
            font-size: 16px;
            color: #888;
        }
        .footer a {
            color: #e74c3c;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Account</h1>
        <p>Are you sure you want to delete your account? This action cannot be undone.</p>
        <form action="del" method="post">
            <button class="delete-button" type="submit">Delete My Account</button>
        </form>
        <div class="footer">
            <p>Return to <a href="profile.html">Profile</a></p>
        </div>
    </div>
</body>
</html>
