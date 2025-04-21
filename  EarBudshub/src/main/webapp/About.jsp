<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BomBerZ - About Us</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }

        /* Navbar */
        .navbar {
            background-color: black;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
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
            gap: 10px;
        }

        .navbar input[type="text"] {
            padding: 6px;
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

        /* Hero About Section */
        .about-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 50px 60px;
        }

        .about-text {
            max-width: 50%;
        }

        .about-text h2 {
            font-size: 32px;
            margin-bottom: 20px;
        }

        .about-text p {
            font-size: 16px;
            color: #333;
            line-height: 1.6;
        }

        .about-image img {
            border-radius: 20px;
            width: 350px;
        }

        /* Stats */
        .stats {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 40px 0;
            flex-wrap: wrap;
        }

        .stat-card {
            background-color: #fff;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 200px;
        }

        .stat-card.highlight {
            background-color: #c52828;
            color: white;
        }

        .stat-card h3 {
            margin: 10px 0;
        }

        /* Team Section */
        .team {
            display: flex;
            justify-content: center;
            gap: 50px;
            padding: 40px 0;
        }

        .member {
            text-align: center;
        }

        .member img {
            width: 160px;
            height: 200px;
            object-fit: cover;
            border-radius: 12px;
        }

        .member h4 {
            margin: 10px 0 5px;
        }

        .member p {
            margin: 0;
            font-size: 14px;
            color: #555;
        }

        .member .socials {
            margin-top: 5px;
            font-size: 18px;
        }

        /* Highlights */
        .highlights {
            display: flex;
            justify-content: space-around;
            background: #fff;
            padding: 30px 20px;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        .highlight-item {
            text-align: center;
            width: 200px;
        }

        .highlight-item span {
            font-size: 32px;
        }

        .highlight-item p {
            margin-top: 10px;
            font-weight: bold;
        }

        .highlight-item small {
            display: block;
            color: #555;
            margin-top: 5px;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="left">
            <div class="logo">Earbudshub</div>
            <div class="nav-links">
                <a href="home.jsp">Home</a>
                <a href="#">Contact</a>
                <a href="About.jsp">About</a>
                <a href="Sinup.jsp">Sign Up</a>
            </div>
        </div>
       
    </div>

    <!-- About Section -->
    <div class="about-section">
        <div class="about-text">
            <h2>Our Story</h2>
            <p>
                Launched in 2025, Exclusive is South Asia’s premier online shopping marketplace with an active presence in Bangladesh. Supported by wide range of tailored marketing, data and service solutions, Exclusive has 10,500 sellers and 300 brands and serves 3 million customers across the region.<br><br>
                Exclusive has more than 1 Million products to offer, growing at a very fast rate. Exclusive offers a diverse assortment in categories ranging from consumer.
            </p>
        </div>
        <div class="about-image">
            <img src="https://media.istockphoto.com/id/1127542345/photo/close-up-portrait-of-nice-lovely-sweet-attractive-calm-peaceful-conecnrated-focused-girl.jpg?s=612x612&w=0&k=20&c=krUDEb7Xj0qV1c0E-9GZBRU9gigojB-oFvzyS5ngXUw=" alt="Comfort Headset" />
        </div>
    </div>

    <!-- Stats Section -->
    <div class="stats">
        <div class="stat-card">
            <span>🛍️</span>
            <h3>10.5k</h3>
            <p>Sellers active on our site</p>
        </div>
        <div class="stat-card highlight">
            <span>💰</span>
            <h3>33k</h3>
            <p>Monthly Product Sale</p>
        </div>
        <div class="stat-card">
            <span>🧑‍🤝‍🧑</span>
            <h3>45.5k</h3>
            <p>Customer active in our site</p>
        </div>
        <div class="stat-card">
            <span>📈</span>
            <h3>25k</h3>
            <p>Annual gross sale in our site</p>
        </div>
    </div>

    <!-- Team Section -->
    <div class="team">
        <div class="member">
            <img src="https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRvfaK9kjLritKOxR1mmeQvX9F5qIV1mAzTODWjGKZIT8fPFgdZhxhhkCQbZjRmeGtJM1CB_tYcQjxncWk" alt="Tom Cruise">
            <h4>Tom Cruise</h4>
            <p>Founder & Chairman</p>
            <div class="socials">🐦 📸 💼</div>
        </div>
        <div class="member">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OWYUXaj_sNSEtrjD8nmg0EGUrvWZq80GSr6p23NBgJihaOm-uBtk61KBLnd1fuWwJbiiqfZR2Miu4GpFvNpFJg" alt="Emma Watson">
            <h4>Emma Watson</h4>
            <p>Managing Director</p>
            <div class="socials">🐦 📸 💼</div>
        </div>
        <div class="member">
            <img src="https://m.media-amazon.com/images/M/MV5BNTczMzk1MjU1MV5BMl5BanBnXkFtZTcwNDk2MzAyMg@@._V1_FMjpg_UX1000_.jpg" alt="Will Smith">
            <h4>Will Smith</h4>
            <p>Product Designer</p>
            <div class="socials">🐦 📸 💼</div>
        </div>
    </div>

    <!-- Highlights Section -->
    <div class="highlights">
        <div class="highlight-item">
            <span>🚚</span>
            <p>FREE AND FAST DELIVERY</p>
            <small>Free delivery for all orders over $140</small>
        </div>
        <div class="highlight-item">
            <span>📞</span>
            <p>24/7 CUSTOMER SERVICE</p>
            <small>Friendly 24/7 customer support</small>
        </div>
        <div class="highlight-item">
            <span>💵</span>
            <p>MONEY BACK GUARANTEE</p>
            <small>We return money within 30 days</small>
        </div>
    </div>

</body>
</html>
