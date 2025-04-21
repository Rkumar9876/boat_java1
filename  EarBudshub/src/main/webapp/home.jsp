<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BomBerZ - Home</title>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ecf6f7, #daf6f6);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: black;
            color: white;
            padding: 10px 40px;
        }

        .navbar .left {
            display: flex;
            align-items: center;
        }

        .navbar .logo {
            font-size: 22px;
            font-weight: bold;
            margin-right: 30px;
        }

        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }

        .navbar .right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .navbar input[type="text"] {
            padding: 6px 10px;
            border-radius: 5px;
            border: none;
        }

        .admin-btn {
            background-color: #ec5a5a;
            color: white;
            border: none;
            padding: 7px 15px;
            border-radius: 10px;
            cursor: pointer;
        }

        .icons {
            display: flex;
            gap: 12px;
            font-size: 18px;
            color: white;
            cursor: pointer;
        }

        .icons i:hover {
            color: #ec5a5a;
        }

        .main {
            display: flex;
            padding: 30px;
        }

        .sidebar {
            width: 200px;
            margin-right: 40px;
        }

        .sidebar h3 {
            font-size: 20px;
            font-weight: bold;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul button {
            width: 100%;
            margin: 5px 0;
            padding: 10px;
            font-size: 14px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            background-color: #f4f4f4;
        }

        .sidebar ul button:hover {
            background-color: #ddd;
        }

        .hero {
            flex: 1;
            text-align: center;
        }

        .hero h1 {
            font-size: 32px;
            font-weight: bold;
            margin: 20px 0;
        }

        .hero span {
            font-size: 18px;
            color: #777;
        }

        .hero img {
            width: 300px;
            margin-top: 20px;
        }

        .flash-sales {
            padding: 20px 40px;
        }

        .flash-sales h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .products {
            display: flex;
            gap: 20px;
            overflow-x: auto;
        }

        .product-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 200px;
            padding: 15px;
            text-align: center;
            position: relative;
        }

        .discount {
            position: absolute;
            top: 10px;
            left: 10px;
            background: red;
            color: white;
            padding: 2px 8px;
            border-radius: 5px;
            font-size: 12px;
        }

        .product-card img {
            width: 100px;
            height: 100px;
            object-fit: contain;
            margin: 10px 0;
        }

        .product-card button {
            background-color: black;
            color: white;
            border: none;
            padding: 8px;
            border-radius: 6px;
            margin: 10px 0;
            cursor: pointer;
        }

        .product-title {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .price {
            font-size: 14px;
        }

        .price s {
            color: #aaa;
            margin-left: 5px;
        }

        .footer {
            background-color: #222;
            color: #ddd;
            padding: 40px 60px;
            margin-top: 50px;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .footer-column {
            flex: 1;
            min-width: 220px;
            margin: 10px 20px;
        }

        .footer-column h4 {
            color: white;
            margin-bottom: 15px;
        }

        .footer-column ul {
            list-style: none;
            padding: 0;
        }

        .footer-column ul li {
            margin-bottom: 10px;
            cursor: pointer;
        }

        .footer-bottom {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #aaa;
        }

        .social-icons span {
            margin-right: 10px;
            font-size: 18px;
            cursor: pointer;
        }

        .footer-column ul li:hover,
        .social-icons span:hover {
            color: #fff;
        }
    </style>
    <script>
        function navigateTo(page) {
            window.location.href = page;
        }
    </script>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="left">
        <div class="logo">Earbudshub</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </div>
    </div>
    <div class="right">
        <input type="text" placeholder="What are you looking for?" />
        <div class="icons">
            <i class="fas fa-heart" onclick="navigateTo('product.jsp')"></i>
            <i class="fas fa-shopping-cart" onclick="navigateTo('Cart.jsp')"></i>
            <i class="fas fa-user" onclick="navigateTo('profile.jsp')"></i>
        </div>
        <button onclick="navigateTo('Adminlogin.jsp')">Admin</button>>
    </div>
</div>

<!-- Main Section -->
<div class="main">
    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Category</h3>
        <ul>
            <button onclick="navigateTo('Headphones.jsp')">Headphones</button>
           
            <button onclick="navigateTo('Wired Earphones.jsp')">Wired Earphones</button>
        </ul>
    </div>

    <!-- Hero -->
    <div class="hero">
        <span>HEADPHONE OF THE DAY</span>
        <h1>ALL YOUR<br>STYLE ARE HERE</h1>
        <img src="https://www.addmecart.com/wp-content/uploads/2023/08/123-235.png" alt="Headphones" />
    </div>
</div>

<!-- Flash Sales -->
<div class="flash-sales">
    <h2>Flash Sales</h2>
    <div class="products">
        <div class="product-card">
            <div class="discount">-40%</div>
            <img src="https://www.addmecart.com/wp-content/uploads/2023/08/123-235.png" alt="Product 1" />
            <button>Add To Cart</button>
            <div class="product-title">BoAt Rockerz 550 Headphone</div>
            <div class="price">$120 <s>$200</s></div>
        </div>

        <div class="product-card">
            <div class="discount">-35%</div>
            <img src="https://dailydeals365.in/wp-content/uploads/2024/07/Skullcandy-Sesh-Evo-Truly-Wireless-Bluetooth-in-Ear-Earbuds-with-Mic-Chill-Grey-Black.webp" alt="Product 2" />
            <button>Add To Cart</button>
            <div class="product-title">Skull Wireless Earbuds</div>
            <div class="price">$160 <s>$230</s></div>
        </div>
        
        <div class="product-card">
            <div class="discount">-35%</div>
            <img src="https://dailydeals365.in/wp-content/uploads/2024/07/Skullcandy-Sesh-Evo-Truly-Wireless-Bluetooth-in-Ear-Earbuds-with-Mic-Chill-Grey-Black.webp" alt="Product 3" />
            <button>Add To Cart</button>
            <div class="product-title">Skull Wireless Earbuds</div>
            <div class="price">$160 <s>$230</s></div>
        </div>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <div class="footer-container">
        <div class="footer-column">
            <h4>About Us</h4>
            <ul>
                <li>Company Info</li>
                <li>Careers</li>
                <li>Store Location</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>Support</h4>
            <ul>
                <li>Contact Us</li>
                <li>FAQ</li>
                <li>Help Center</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>Social Media</h4>
            <div class="social-icons">
                <span>📘</span>
                <span>🐦</span>
                <span>📸</span>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        © 2025 Earbudshub. All rights reserved.
    </div>
</div>

</body>
</html>
