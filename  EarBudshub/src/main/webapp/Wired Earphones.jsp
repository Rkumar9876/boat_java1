<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wishlist - BomBerZ</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
           background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }

        .top-banner {
            background: black;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 14px;
        }

        .top-banner span {
            color: yellow;
        }

        .navbar {
            background: #fff;
            padding: 15px 30px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar .menu a {
            margin: 0 15px;
            text-decoration: none;
            color: #111;
            font-weight: 500;
        }

        .navbar input[type="text"] {
            padding: 6px 12px;
            border: 1px solid #999;
            border-radius: 4px;
        }

        .wishlist-container {
            max-width: 95%;
            margin: 40px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        .wishlist-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .wishlist-header h2 {
            font-size: 22px;
        }

        .wishlist-header button {
            background-color: #f6b1b1;
            border: none;
            padding: 8px 16px;
            font-weight: bold;
            color: #111;
            border-radius: 4px;
            cursor: pointer;
        }

        .products {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .product-card {
            background: white;
            width: 220px;
            border-radius: 10px;
            padding: 20px;
            position: relative;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        .product-card img {
            height: 150px;
            object-fit: contain;
            margin-bottom: 15px;
        }

        .product-card h4 {
            margin: 5px 0;
            font-size: 16px;
        }

        .price {
            font-size: 16px;
            margin-top: 10px;
        }

        .price del {
            color: gray;
            font-size: 14px;
            margin-left: 5px;
        }

        .discount-badge {
            background: red;
            color: white;
            font-size: 13px;
            padding: 3px 8px;
            position: absolute;
            top: 15px;
            left: 15px;
            border-radius: 4px;
            font-weight: bold;
        }

        .product-card button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: black;
            color: white;
            border: none;
            border-radius: 2px;
            font-weight: bold;
            cursor: pointer;
        }

        .product-card button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

    <!-- Offer Banner -->
    <div class="top-banner">
        Summer Sale For All Swim Suits And Free Express Delivery - OFF 50%! <span>ShopNow</span>
    </div>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">EarBudshub</div>
        <div class="menu">
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </div>
        <input type="text" placeholder="What are you looking for?" />
    </div>

    <!-- Wishlist Section -->
    <div class="wishlist-container">
        <div class="wishlist-header">
            <h2>Wired Earphones 's</h2>
            <button>Move All To Bag</button>
        </div>

        <div class="products">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="discount-badge">-35%</div>
                <img src="data:image/jpeg;base64,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" alt="BoAt Rockerz 550">
                <h4>BoAt Rockerz 550</h4>
                <div class="price">$120 <del>$200</del></div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 2 -->
            <div class="product-card">
                <img src="data:image/jpeg;base64,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" alt="FireBolt EarBuds Pro">
                <h4>FireBolt EarBuds Pro</h4>
                <div class="price">$140</div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 3 -->
            <div class="product-card">
                <img src="data:image/jpeg;base64,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" alt="BoAt Rockerz 600">
                <h4>BoAt Rockerz 600</h4>
                <div class="price">$140</div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 4 -->
            <div class="product-card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlULtCOAala9zIw3HGlrUM1L_QsedsoSn3sQ&s" alt="BoAt Black Urban">
                <h4>BoAt Black Urban</h4>
                <div class="price">$108</div>
                <button>Add To Cart</button>
            </div>
        </div>
    </div>

</body>
</html>
