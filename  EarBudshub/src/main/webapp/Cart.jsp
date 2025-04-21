<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart - QuickBuy</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }

        .top-bar {
            background: #000;
            color: #fff;
            text-align: center;
            padding: 5px;
            font-size: 14px;
        }

        .top-bar a {
            color: #fff;
            text-decoration: underline;
            margin-left: 5px;
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px 40px;
            background: white;
        }

        .logo {
            font-weight: bold;
            font-size: 22px;
        }

        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: black;
        }

        .breadcrumb {
            padding: 20px 40px;
            font-size: 14px;
            color: #888;
        }

        .cart {
            padding: 20px 40px;
        }

        .cart-table {
            background: white;
            padding: 20px;
            border-radius: 8px;
        }

        .table-header, .cart-item {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }

        .table-header {
            font-weight: bold;
        }

        .cart-item:last-child {
            border-bottom: none;
        }

        .btn-return {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #f8f2ef;
            border: 1px solid #aaa;
            text-decoration: none;
            color: #333;
            border-radius: 4px;
        }

        .empty-cart {
            text-align: center;
            padding: 40px;
            background: white;
            border-radius: 8px;
            font-size: 18px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="top-bar">
        <p>Summer Sale For All Swim Suits And Free Express Delivery - OFF 50%! <a href="#">Shop Now</a></p>
    </div>

    <header>
        <div class="logo">EarBudshub</div>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </nav>
    </header>

    <section class="breadcrumb">
        Home / <span>Cart</span>
    </section>

    <section class="cart">
        <%
            List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
            if (cart == null || cart.isEmpty()) {
        %>
            <div class="empty-cart">Your cart is empty.</div>
        <%
            } else {
        %>
            <div class="cart-table">
                <div class="table-header">
                    <div>Product</div>
                    <div>Price</div>
                    <div>Quantity</div>
                    <div>Subtotal</div>
                </div>

                <%
                    double grandTotal = 0.0;
                    for (Map<String, Object> item : cart) {
                        String name = (String) item.get("name");
                        String description = (String) item.get("description");
                        String category = (String) item.get("category");
                        double price = (Double) item.get("price");
                        int quantity = (Integer) item.get("quantity");
                        double subtotal = price * quantity;
                        grandTotal += subtotal;
                %>
                <div class="cart-item">
                    <div><strong><%= name %></strong><br><small><%= description %></small></div>
                    <div>$<%= String.format("%.2f", price) %></div>
                    <div><%= quantity %></div>
                    <div>$<%= String.format("%.2f", subtotal) %></div>
                </div>
                <% } %>

                <div class="cart-item" style="font-weight: bold; border-top: 2px solid #ccc;">
                    <div>Total</div>
                    <div></div>
                    <div></div>
                    <div>$<%= String.format("%.2f", grandTotal) %></div>
                </div>
            </div>
        <%
            }
        %>
        <a href="Addproduct.jsp" class="btn-return">← Continue Shopping</a>
    </section>
</body>
</html>
