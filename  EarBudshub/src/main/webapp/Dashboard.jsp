<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard - QuickBuy</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
                       background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);

        }

        .dashboard-container {
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 220px;
            background: rgba(255, 255, 255, 0.6);
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            border-right: 1px solid #ddd;
        }

        .sidebar .logo {
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 40px;
        }

        .nav-link {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            color: #000;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }

        .nav-link:hover {
            transform: translateX(5px);
        }

        .nav-link img {
            width: 20px;
            margin-right: 10px;
        }

        .logout {
            margin-top: auto;
            color: #000;
            font-weight: bold;
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .main-content {
            flex: 1;
            padding: 30px;
        }

        .summary-cards {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }

        .card {
            flex: 1;
            background: white;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .card h4 {
            margin: 10px 0;
            font-size: 16px;
        }

        .card p {
            font-size: 20px;
            font-weight: bold;
        }

        .orders-section {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .orders-section h4 {
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f7f7f7;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div class="dashboard-container">
    <div class="sidebar">
        <div>
            <div class="logo">EarBudshub</div>
            <a href="Dashboard.jsp" class=""><img src="https://img.icons8.com/material-rounded/24/000000/home.png"/>Dashboard</a>
            <a href="orderlist.jsp" class="nav-link"><img src="https://img.icons8.com/material-rounded/24/000000/purchase-order.png"/>Order List</a>
            <a href="Addproduct.jsp" class="nav-link"><img src="https://img.icons8.com/material-rounded/24/000000/product.png"/>Product</a>
            
        </div>
         <a href="login.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <div class="main-content">
        <div class="summary-cards">
            <div class="card">
                <img src="https://img.icons8.com/ios-filled/50/000000/box.png" width="32"/>
                <h4>Total Order</h4>
                <p>$ 2500</p>
            </div>
            <div class="card">
                <img src="https://img.icons8.com/ios-filled/50/000000/box.png" width="32"/>
                <h4>Active Order</h4>
                <p>$ 2500</p>
            </div>
            <div class="card">
                <img src="https://img.icons8.com/ios-filled/50/000000/box.png" width="32"/>
                <h4>Complete Order</h4>
                <p>$ 2500</p>
            </div>
        </div>

        <div class="orders-section">
            <h4>Recent Order</h4>
            <table>
                <thead>
                <tr>
                    <th>Product</th>
                    <th>Order Id</th>
                    <th>Date</th>
                    <th>Name</th>
                    <th>Status</th>
                    <th>Amount</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>BoAt Headphone $120</td>
                    <td>1</td>
                    <td>Jan 8th</td>
                    <td>Rajesh</td>
                    <td>Delivered</td>
                    <td>$120.0</td>
                </tr>
                <tr>
                    <td>Skull Earbuds $140</td>
                    <td>2</td>
                    <td>Nov 8th</td>
                    <td>Alok</td>
                    <td>Canceled</td>
                    <td>$140.0</td>
                </tr>
                <tr>
                    <td>BoAt Red Earphone $90</td>
                    <td>3</td>
                    <td>Nov 8th</td>
                    <td>Prince</td>
                    <td>Delivered</td>
                    <td>$90.0</td>
                </tr>
                <tr>
                    <td>FireBolt Pro $140</td>
                    <td>4</td>
                    <td>Aug 8th</td>
                    <td>Abhi</td>
                    <td>Canceled</td>
                    <td>$140.0</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
