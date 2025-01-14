<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password - Food Delivery App</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 400px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
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
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            font-weight: bold;
            margin-bottom: 8px;
            color: #555;
            font-size: 18px;
            display: block;
            width: 100%;
            text-align: left;
        }
        input[type="password"] {
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
            transition: border-color 0.3s ease-in-out;
        }
        input[type="password"]:focus {
            outline: none;
            border-color: #5E9ED6;
        }
        button {
            background-color: #5E9ED6;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
            margin-top: 20px;
            width: 100%;
            box-sizing: border-box;
        }
        button:hover {
            background-color: #4C87B9;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #888;
        }
        .footer a {
            color: #5E9ED6;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Change Password</h1>
        <form action="update-password.php" method="post">
            <label for="current-password">Current Password:</label>
            <input type="password" id="current-password" name="current-password" required>
            
            <label for="new-password">New Password:</label>
            <input type="password" id="new-password" name="new-password" required>
            
            <label for="confirm-password">Confirm New Password:</label>
            <input type="password" id="confirm-password" name="confirm-password" required>
            
            <button type="submit">Change Password</button>
        </form>
        <div class="footer">
            <p>Return to <a href="profile.html">Profile</a></p>
        </div>
    </div>
</body>
</html>
