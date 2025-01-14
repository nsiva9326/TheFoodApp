<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - HungryHub</title>
     <link rel="stylesheet" href="Login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
</head>
<body>
    <form action="login" method="post">
    <div class="form-box">
            <h2>Login</h2>
            <div class="inputbox">
                <ion-icon name="person-outline"></ion-icon>
                <input type="text"  name="username" required>
                <label>Username</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <button type="submit">Login</button>
            <div class="register">
                <p>Don't have an account? <a href="Registration.jsp">Register Here</a></p>
            </div>
    </div>
    </form>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
    