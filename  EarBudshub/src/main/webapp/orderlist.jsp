<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List - QuickBuy</title>
    <link rel="icon" type="image/png" href="favicon.png">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            display: flex;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }
        .sidebar {
            width: 200px;
            background: rgba(255, 255, 255, 0.6);
            height: 100vh;
            padding: 20px;
        }
        .sidebar h2 {
            margin-bottom: 30px;
        }
        .sidebar a {
            display: flex;
            align-items: center;
            padding: 10px;
            text-decoration: none;
            color: black;
        }
        .sidebar a i {
            margin-right: 10px;
        }
        .main-content {
            flex-grow: 1;
            padding: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background: #f0f0f0;
            border-radius: 5px;
        }
        .order-table {
            margin-top: 20px;
            background: #f8f8f8;
            padding: 20px;
            border-radius: 5px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border-bottom: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>EarBudshub</h2>
        <a href="Dashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
        <a href="orderlist.jsp"><i class="fas fa-list"></i> Order List</a>
        <a href="Addproduct.jsp"><i class="fas fa-box"></i> Product</a>
       
        <a href="login.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
    
    <div class="main-content">
        <div class="header">
            <h2>Order List</h2>
        </div>

        <div class="order-table">
            <table>
                <tr>
                    <th>Order ID</th>
                    <th>Product</th>
                    <th>Customer</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th>Total Amount</th>
                </tr>
                <tr>
                    <td>#1001</td>
                    <td>Smartphone</td>
                    <td>Rohit</td>
                    <td>Feb 10th</td>
                    <td>Delivered</td>
                    <td>$699</td>
                </tr>
                <tr>
                    <td>#1002</td>
                    <td>Headphones</td>
                    <td>Anjali</td>
                    <td>Feb 12th</td>
                    <td>Pending</td>
                    <td>$199</td>
                </tr>
                <tr>
                    <td>#1003</td>
                    <td>Laptop</td>
                    <td>Vikram</td>
                    <td>Feb 15th</td>
                    <td>Canceled</td>
                    <td>$1200</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
