<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #666666;
        }
        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }
        .payment-methods {
            margin: 20px 0;
        }
        .payment-method {
            margin-bottom: 10px;
        }
        .button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
            
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Checkout</h1>
        <form action="Checkout" method="post">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="amount">Total Amount:</label>
                <input type="number" id="amount" name="amount" required>
            </div>
            <div class="payment-methods">
                <h2>Payment Methods</h2>
                <div class="payment-method">
                    <input type="radio" id="creditCard" name="paymentMethod" value="creditCard" required>
                    <label for="creditCard">Credit Card</label>
                </div>
                <div class="payment-method">
                    <input type="radio" id="debitCard" name="paymentMethod" value="debitCard">
                    <label for="debitCard">Debit Card</label>
                </div>
                <div class="payment-method">
                    <input type="radio" id="upi" name="paymentMethod" value="upi">
                    <label for="upi">UPI</label>
                </div>
                <div class="payment-method">
                    <input type="radio" id="cod" name="paymentMethod" value="cod">
                    <label for="cod">Cash on Delivery</label>
                </div>
            </div>
            <a href = "OrderConfirmation.jsp" class="button">Place Order</a>
        </form>
    </div> 
</body>
</html>




