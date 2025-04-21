<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - BomBerZ</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecf3;
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 100vh;
            padding: 0 5%;
        }

        .login-section {
            max-width: 400px;
            width: 100%;
        }

        .login-section h2 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .login-section h2 span {
            color: black;
        }

        .login-section p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        form input {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #d9534f;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #c9302c;
        }

        .forgot-password {
            display: block;
            margin-top: 10px;
            color: #d9534f;
            font-size: 14px;
            text-align: right;
            text-decoration: none;
        }

        .image-section img {
            width: 400px;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-section">
            <h2>Log in to <span>EarBudshub</span></h2>
            <p>Enter your details below</p>
            <form action="LoginServlet" method="post">
                <input type="text" name="emailOrPhone" placeholder="Email or Phone Number" required />
                <input type="password" name="password" placeholder="Password" required />
                <button type="submit">Log In</button>
            </form>
            <a href="#" class="forgot-password">Forget Password?</a>
        </div>
        <div class="image-section">
            <img src="https://static.vecteezy.com/system/resources/thumbnails/011/401/535/small/online-shopping-trolley-click-and-collect-order-logo-design-template-vector.jpg" alt="QuickBuy Logo" />
        </div>
    </div>
</body>
</html>