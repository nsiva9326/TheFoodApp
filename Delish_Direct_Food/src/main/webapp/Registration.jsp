<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - ExpressEats</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Existing styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', Arial, Helvetica, sans-serif;
        }
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(135deg, 
                rgba(255, 65, 108, 0.8) 0%, 
                rgba(255, 75, 43, 0.8) 10%, 
                rgba(0, 72, 255, 0.8) 20%, 
                rgba(0, 255, 170, 0.8) 30%, 
                rgba(0, 176, 255, 0.8) 40%, 
                rgba(255, 0, 246, 0.8) 50%, 
                rgba(255, 240, 0, 0.8) 60%, 
                rgba(255, 154, 0, 0.8) 70%, 
                rgba(68, 0, 255, 0.8) 80%, 
                rgba(0, 235, 255, 0.8) 90%);
            background-size: 300% 300%;
            animation: gradientAnimation 15s ease infinite;
            backdrop-filter: blur(5px);
            overflow: hidden;
        }
        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }
        .form-box {
            width: 400px;
            padding: 40px;
            background: rgba(0, 0, 0, 0.8);
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            position: relative;
            overflow: hidden;
        }
        .form-box::before {
            content: '';
            position: absolute;
            width: 200%;
            height: 200%;
            background: rgba(255,255,255,0.1);
            top: -50%;
            left: -50%;
            z-index: -1;
            transform: rotate(45deg);
        }
        h2 {
            font-size: 2.5em;
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
            text-shadow: 0 0 10px rgba(0,0,0,0.5);
        }
        .inputbox {
            position: relative;
            margin: 30px 0;
            width: 100%;
            border-bottom: 2px solid #fff;
        }
        .inputbox label {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #fff;
            font-size: 1em;
            pointer-events: none;
            transition: 0.5s;
        }
        .inputbox input {
            width: 100%;
            height: 50px;
            background: transparent;
            border: none;
            outline: none;
            font-size: 1em;
            padding: 0 10px 0 30px;
            color: #fff;
        }
        .inputbox ion-icon {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            color: #fff;
            font-size: 1.2em;
        }
        .inputbox input:focus ~ label,
        .inputbox input:valid ~ label {
            top: -20px;
            left: 5px;
            color: #ff9800;
            font-size: 0.8em;
        }
        .terms {
            margin: 20px 0;
            font-size: 0.9em;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .terms input {
            margin-right: 10px;
        }
        button {
            width: 100%;
            height: 50px;
            border-radius: 25px;
            background: linear-gradient(135deg, #ff9800 0%, #ff6400 100%);
            border: none;
            outline: none;
            cursor: pointer;
            font-size: 1em;
            font-weight: 600;
            color: #fff;
            transition: background-color 0.3s;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }
        button:hover {
            background-color: #e58900;
        }
        .login {
            font-size: 0.9em;
            color: #fff;
            text-align: center;
            margin-top: 25px;
        }
        .login p a {
            text-decoration: none;
            color: #ff9800;
            font-weight: 600;
        }
        .login p a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-box">
        <form action="register" method="post" >
            <h2>Register</h2>
            <div class="inputbox">
                <ion-icon name="person-outline"></ion-icon>
                <input type="text" name="username" required>
                <label for="">Username</label>
            </div>
            <div class="inputbox">
                <ion-icon name="mail-outline"></ion-icon>
                <input type="email" name="email" required>
                <label for="">Email</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" name="password" required>
                <label for="">Password</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" name="cpassword" required>
                <label for="">Confirm Password</label>
            </div>
            <div class="inputbox">
                <ion-icon name="home-outline"></ion-icon>
                <input type="text" name="address" required>
                <label for="">Address</label>
            </div>
            <div class="inputbox">
                <ion-icon name="briefcase-outline"></ion-icon>
                <input type="text" name="role" required>
                <label for="">Role</label>
            </div>
            <div class="terms">
                <input type="checkbox" required>
                <label for="">I agree to the <a href="#">Terms and Conditions</a></label>
            </div>
            <button type="submit">Register</button>
            <div class="login">
                <p>Already have an account? <a href="Login.jsp">Login</a></p>
            </div>
        </form>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
