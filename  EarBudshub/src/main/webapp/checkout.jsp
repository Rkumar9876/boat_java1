<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout - QuickBuy</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);

        .top-bar {
            background-color: black;
            color: white;
            padding: 6px;
            text-align: center;
            font-size: 14px;
        }

        .top-bar a {
            color: white;
            text-decoration: underline;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: white;
            padding: 20px 40px;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
        }

        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: black;
        }

        .search-box {
            position: relative;
        }

        .search-box input {
            padding: 6px 30px 6px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .search-box span {
            position: absolute;
            right: 10px;
            top: 6px;
        }

        .icons {
            font-size: 18px;
        }

        .breadcrumb {
            padding: 20px 40px;
            font-size: 14px;
            color: #888;
        }

        .container {
            display: flex;
            justify-content: space-between;
            padding: 20px 40px;
        }

        .left-form {
            width: 55%;
        }

        .left-form h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .optional {
            font-size: 13px;
            color: #999;
        }

        .save-info {
            margin-top: 15px;
            display: flex;
            align-items: center;
            font-size: 14px;
        }

        .save-info input {
            margin-right: 10px;
        }

        .right-summary {
            width: 40%;
            background: rgba(255, 255, 255, 0.4);
            border-radius: 10px;
            padding: 30px;
        }

        .summary-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .product {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .product img {
            width: 40px;
            margin-right: 10px;
        }

        .payment-methods {
            margin-top: 20px;
        }

        .payment-methods label {
            display: block;
            margin: 10px 0;
        }

        .coupon {
            margin-top: 20px;
            display: flex;
        }

        .coupon input {
            flex: 1;
            padding: 10px;
            border: 1px solid #aaa;
            border-radius: 4px 0 0 4px;
        }

        .coupon button {
            background-color: #c0392b;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
        }

        .place-order {
            margin-top: 30px;
            text-align: center;
        }

        .place-order button {
            background-color: #c0392b;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .icons img {
            width: 40px;
            margin: 5px;
        }
    </style>
</head>
<body>
    <div class="top-bar">
        Summer Sale For All Swim Suits And Free Express Delivery – OFF 50%! <a href="#">ShopNow</a>
    </div>

    <header>
        <div class="logo">Earbudshub</div>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </nav>
        
    </header>

    <div class="breadcrumb">
        Account / My Account / Product / View Cart / <b>CheckOut</b>
    </div>

    <div class="container">
        <div class="left-form">
            <h2>Billing Details</h2>
            <form action="placeOrder.jsp" method="post">
                <div class="form-group">
                    <label>First Name*</label>
                    <input type="text" name="firstName" required>
                </div>
                <div class="form-group">
                    <label>Company Name</label>
                    <input type="text" name="companyName">
                </div>
                <div class="form-group">
                    <label>Street Address*</label>
                    <input type="text" name="street" required>
                </div>
                <div class="form-group">
                    <label>Apartment, floor, etc. (optional)</label>
                    <input type="text" name="apt">
                </div>
                <div class="form-group">
                    <label>Town/City*</label>
                    <input type="text" name="city" required>
                </div>
                <div class="form-group">
                    <label>Phone Number*</label>
                    <input type="text" name="phone" required>
                </div>
                <div class="form-group">
                    <label>Email Address*</label>
                    <input type="email" name="email" required>
                </div>

                <div class="save-info">
                    <input type="checkbox" name="saveInfo" checked>
                    <label>Save this information for faster check-out next time</label>
                </div>
            </form>
        </div>

        <div class="right-summary">
            <div class="product">
                <img src="data:image/jpeg;base64,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" alt="BoAt 550">
                <span>BoAt 550</span>
                <span style="margin-left:auto;">$120</span>
            </div>
            <div class="product">
                <img src="data:image/jpeg;base64,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" alt="FireBolt Pro">
                <span>FireBolt Pro</span>
                <span style="margin-left:auto;">$140</span>
            </div>

            <div class="summary-item"><span>Subtotal:</span><span>$260</span></div>
            <div class="summary-item"><span>Shipping:</span><span>Free</span></div>
            <div class="summary-item"><strong>Total:</strong><strong>$260</strong></div>

            <div class="payment-methods">
                <label><input type="radio" name="payment" value="bank"> Bank</label>
                <div class="icons">
                    <img src="https://i.imgur.com/yKkVa3e.png" alt="payment-icons">
                </div>
                <label><input type="radio" name="payment" value="cod" checked> Cash on delivery</label>
            </div>

            <div class="coupon">
                <input type="text" placeholder="Coupon Code">
                <button type="button">Apply Coupon</button>
            </div>

            <div class="place-order">
                <button type="submit" form="checkoutForm">Place Order</button>
            </div>
        </div>
    </div>
</body>
</html>
