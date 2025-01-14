<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Food Delivery App</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .profile-container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ced4da;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-header h1 {
            font-size: 28px;
            margin: 10px 0;
            color: #343a40;
            text-transform: uppercase;
        }
        .profile-info {
            margin-bottom: 20px;
            padding: 20px;
            background-color: #f1f3f5;
            border: 1px solid #ced4da;
            border-radius: 8px;
        }
        .profile-info h2 {
            font-size: 22px;
            color: #343a40;
            margin-bottom: 10px;
            border-bottom: 1px solid #ced4da;
            padding-bottom: 5px;
        }
        .profile-info p {
            margin: 10px 0;
            color: #6c757d;
        }
        .btn-container {
            text-align: center;
        }
        .btn-container a {
            display: inline-block;
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            padding: 12px 24px;
            margin: 10px 5px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .btn-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <div class="profile-header">
            <h1>Welcome, [User Name]</h1>
        </div>
        
        <div class="profile-info">
            <h2>Personal Information</h2>
            <p><strong>Name:</strong> [User's Full Name]</p>
            <p><strong>Email:</strong> [User's Email]</p>
            <p><strong>Phone Number:</strong> [User's Phone Number]</p>
        </div>
        
        <div class="profile-info">
            <h2>Settings</h2>
            <p><strong>Notification Preferences:</strong> All Notifications</p>
            <p><strong>Privacy Settings:</strong> Public</p>
        </div>
        
        <div class="btn-container">
            <a href="EditProfile.html">Edit Profile</a>
            <a href="ChanegedPassword.html">Change Password</a>
            <a href="DeleteAccount.html">Delete Account</a>
            <a href="logout.html">Logout</a>
        </div>
    </div>
</body>
</html>
    