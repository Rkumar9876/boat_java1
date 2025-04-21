<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            background: linear-gradient(to right, #d3f1f7, #f7f9fb);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .success-box {
            background-color: white;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 90%;
        }

        .success-box h1 {
            color: #28a745;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .success-box p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }

        .success-box a {
            display: inline-block;
            padding: 12px 24px;
            background-color: #28a745;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            transition: background 0.3s ease;
        }

        .success-box a:hover {
            background-color: #218838;
        }

        .success-icon {
            font-size: 60px;
            color: #28a745;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="success-box">
        <div class="success-icon">✔️</div>
        <h1>Registration Successful</h1>
        <p>Welcome to EarBudshub! Your account has been created successfully.</p>
        <a href="login.jsp">Go to Login</a>
    </div>
</body>
</html>
