<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wireless Earbuds - BomBerZ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
             background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }

        /* Top banner */
        .top-banner {
            background-color: #0b0b0b ;
            color: white;
            text-align: center;
            padding: 8px;
            font-weight: bold;
        }

        /* Navbar */
        .navbar {
            background-color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar .menu a {
            margin: 0 10px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .navbar input[type="text"] {
            padding: 8px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        /* Section Title */
        .section-title {
            font-size: 28px;
            font-weight: bold;
            margin: 30px;
        }

        .section-title span {
            background-color: #0d6efd;
            color: white;
            padding: 4px 10px;
            border-radius: 4px;
        }

        /* Product Grid */
        .product-grid {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
            padding: 0 30px 50px 30px;
        }

        .product-card {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            width: 220px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
            text-align: center;
            transition: 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .product-card img {
            width: 100%;
            height: 160px;
            object-fit: contain;
        }

        .product-card h4 {
            margin: 10px 0 5px;
        }

        .price {
            color: red;
            font-size: 18px;
            font-weight: bold;
        }

        .stars {
            color: #f9b202;
            margin: 5px 0;
        }

        .add-to-cart {
            background-color: #28a745;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 10px;
        }

        .add-to-cart:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <!-- Top Banner -->
    <div class="top-banner">
        Summer sale for All swim fluids and Free Egress Delivery - OFF 50%! Shopstore
    </div>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">EarBushub</div>
        <div class="menu">
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </div>
        <input type="text" placeholder="What do you looking for?" />
    </div>

    <!-- Section Title -->
    <div class="section-title">
        <span>EarBuds</span>
    </div>

    <!-- Product Grid -->
    <div class="product-grid">

        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61FwbxlXSfL.jpg" alt="FireVault Buds Pro">
            <h4>FireVault Buds Pro</h4>
            <div class="price">Rs.1000</div>
            <div class="stars">★★★★★</div>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="product-card">
            <img src="data:image/jpeg;base64,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" alt="Skull Wireless Earbuds">
            <h4>Skull Wireless Earbuds</h4>
            <div class="price">Rs.1500</div>
            <div class="stars">★★★★★</div>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNeCDe2UMe4IqGsr-ePjyOrxgyN_OrW2FkUQ&s" alt="Skull Buds Lite">
            <h4>Skull Buds Lite</h4>
            <div class="price">Rs.900</div>
            <div class="stars">★★★★★</div>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="product-card">
            <img src="data:image/jpeg;base64,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" alt="Noise 96 pro">
            <h4>Noise 96 pro</h4>
            <div class="price">Rs.1250</div>
            <div class="stars">★★★★★</div>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="product-card">
            <img src="https://cdn.shopify.com/s/files/1/0548/8849/7221/files/Group_13064.png?v=1741175599" alt="Boutt Round Music">
            <h4>Boutt Round Music</h4>
            <div class="price">Rs.851</div>
            <div class="stars">★★★★★</div>
            <button class="add-to-cart">Add to Cart</button>
        </div>

    </div>

</body>
</html>
