<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile - QuickBuy</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ecf6f7, #daf6f6);
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

        .search {
            display: flex;
            align-items: center;
        }

        .search input {
            padding: 5px 10px;
            border: 1px solid #ccc;
        }

        .search .icon {
            margin-left: -30px;
        }

        .icons {
            font-size: 18px;
        }

        .lang {
            font-size: 14px;
        }

        .breadcrumb {
            padding: 20px 40px;
            font-size: 14px;
            color: #888;
        }

        .container {
            display: flex;
            padding: 20px 40px;
        }

        .sidebar {
            width: 250px;
            padding-right: 30px;
            border-right: 1px solid #ddd;
        }

        .sidebar h3 {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 8px 0;
            color: #555;
            cursor: pointer;
        }

        .sidebar ul li.active {
            color: red;
            font-weight: bold;
        }

        .content {
            flex: 1;
            padding-left: 40px;
            background: rgba(255, 255, 255, 0.4);
            padding: 30px;
            border-radius: 10px;
        }

        .content h2 {
            color: #c33;
            margin-bottom: 20px;
        }

        .form-group {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-group {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            margin-top: 20px;
        }

        .btn-cancel {
            background: transparent;
            border: none;
            color: #444;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-save {
            background: #c33;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 5px;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <div class="top-bar">
        Summer Sale For All Swim Suits And Free Express Delivery – OFF 50%! <a href="#">ShopNow</a>
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

   
        <div class="content">
            <h2>Edit Your Profile</h2>
            <form action="updateProfile.jsp" method="post">
                <div class="form-group">
                    <div style="flex: 1;">
                        <label>First Name</label>
                        <input type="text" name="firstName" value="Ankit">
                    </div>
                    <div style="flex: 1;">
                        <label>Last Name</label>
                        <input type="text" name="lastName" value="Kumar">
                    </div>
                </div>

                <div class="form-group">
                    <div style="flex: 1;">
                        <label>Email</label>
                        <input type="email" name="email" value="akumar@gmail.com">
                    </div>
                    <div style="flex: 1;">
                        <label>Address</label>
                        <input type="text" name="address" value="Rajkot">
                    </div>
                </div>

                <h4>Password Changes</h4>
                <div class="form-group">
                    <input type="password" name="currentPassword" placeholder="Current Password">
                </div>
                <div class="form-group">
                    <input type="password" name="newPassword" placeholder="New Password">
                </div>
                <div class="form-group">
                    <input type="password" name="confirmPassword" placeholder="Confirm New Password">
                </div>

                <div class="btn-group">
                    <button type="reset" class="btn-cancel">Cancel</button>
                    <button type="submit" class="btn-save">Save Changes</button>
                </div>
            </form>
        </div>
    </section>
</body>
</html>
