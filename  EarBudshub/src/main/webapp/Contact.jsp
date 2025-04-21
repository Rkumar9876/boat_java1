<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - BomBerZ</title>
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

        /* Contact Container */
        .contact-wrapper {
            display: flex;
            justify-content: space-between;
            padding: 50px 60px;
            gap: 40px;
        }

        .contact-card {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            width: 35%;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
        }

        .contact-card h3 {
            font-size: 18px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .contact-card p {
            margin: 10px 0;
            color: #333;
        }

        .contact-card .divider {
            border-top: 1px solid #ccc;
            margin: 20px 0;
        }

        .contact-form {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            width: 60%;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #eee;
            border-radius: 6px;
            background-color: #f5f5f5;
        }

        .contact-form .row {
            display: flex;
            gap: 15px;
        }

        .contact-form .row input {
            flex: 1;
        }

        .contact-form button {
            background-color: #b22222;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 10px;
        }

        .contact-form button:hover {
            background-color: #a11e1e;
        }

        .icon {
            font-size: 20px;
            color: #b22222;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="left">
            <div class="logo">EarBudshub</div>
            <div class="nav-links">
                <a href="home.jsp">Home</a>
                <a href="Contact.jsp">Contact</a>
                <a href="About.jsp">About</a>
                <a href="Sinup.jsp">Sign Up</a>
            </div>
        </div>
        <div class="right">
            <input type="text" placeholder="What are you looking for?" />
            <span>❤️ 🛒 👤</span>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="contact-wrapper">

        <!-- Contact Info Card -->
        <div class="contact-card">
            <h3><span class="icon">📞</span> Call To Us</h3>
            <p>We are available 24/7, 7 days a week.</p>
            <p>Phone: +91 8102334400</p>

            <div class="divider"></div>

            <h3><span class="icon">✉️</span> Write To US</h3>
            <p>Fill out our form and we will contact you within 24 hours.</p>
            <p>Emails: akumar@gmail.com</p>
            <p>Emails: skumar@gmail.com</p>
        </div>

        <!-- Contact Form -->
        <div class="contact-form">
            <form action="ContactServlet" method="post">
                <div class="row">
                    <input type="text" name="name" placeholder="Your Name *" required>
                    <input type="email" name="email" placeholder="Your Email *" required>
                    <input type="text" name="phone" placeholder="Your Phone *" required>
                </div>
                <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>

</body>
</html>
