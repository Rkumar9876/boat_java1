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
            <h2>Earbuds's</h2>
            <button>Move All To Bag</button>
        </div>

        <div class="products">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="discount-badge">-35%</div>
                <img src="data:image/jpeg;base64,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g5T1AntVx2Y9HMFMWPmDJHxuEjGi5aHjc839ojeNNDrvta8ogIiICIiAuZemLZh0jW18DSXRNyVLRvdELkPA45STfqN/qrpqIPzhhlyAQ6wUmP7RXzaH0ctLnS0JbGXes6mdcRk8TGR7Hw2t8KpFfhFRB/TQSs/iLbt++27T4oPP/wDT8V9sP3h81qB4O4hfJW5hYOLesWug3LN/eHwK+2Z77vAqMjgcAB+0yX4+rA7zc26+mA/7zL92nH+VBJjJ7zlleP3neCjoX2aA97S7iRYX7ln0rfeb4hB7z0TXey8X5HRa0dQ+A2O5fTO33m+IX14dI3LGySU8GxsfKfBoKBWY5du9T/oiwV1RVOrnj6OC7IifrTOFiRzytJ73jktDZ30ZVdS8OqQaaC9zmymV45NZrl7XbuRXasLw6KmiZBAwMjYMrWjzJPEk6kneSg2kREBERAREQEREBERAREQEREBERAREQEREGvNQRP8Abiid8TGO/ELxGD03+7U//Cj/AEW8iDUGFwDdBD/w2foshQQ/uYvuM/RbKIPAUcX7qP7rf0WQpme4z7oXqiDARNG5o8As0RAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERB//9k=" alt="BoAt Rockerz 550">
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
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Rt6Ao8EznzLY4PxIRaamSgZCJSU3QYYMtw&s" alt="BoAt Rockerz 600">
                <h4>BoAt Rockerz 600</h4>
                <div class="price">$140</div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 4 -->
            <div class="product-card">
                <img src="data:image/jpeg;base64,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" alt="BoAt Black Urban">
                <h4>BoAt Black Urban</h4>
                <div class="price">$108</div>
                <button>Add To Cart</button>
            </div>
        </div>
    </div>

</body>
</html>
