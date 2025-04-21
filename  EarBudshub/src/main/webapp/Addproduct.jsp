<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - QuickBuy</title>
    <link rel="icon" type="image/png" href="favicon.png">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            display: flex;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }
        .sidebar {
            width: 200px;
            background: rgba(255, 255, 255, 0.6);
            height: 100vh;
            padding: 20px;
            position: fixed;
        }
        .sidebar h2 {
            margin-bottom: 30px;
        }
        .sidebar a {
            display: flex;
            align-items: center;
            padding: 10px;
            text-decoration: none;
            color: black;
        }
        .sidebar a i {
            margin-right: 10px;
        }
        .sidebar a:hover {
            background-color: #d4b595;
            border-radius: 5px;
        }
        .main-content {
            flex-grow: 1;
            padding: 20px;
            margin-left: 240px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background: #f0f0f0;
            border-radius: 5px;
        }
        .form-container {
            background: #f8f8f8;
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input, 
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group button {
            background: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-group button:hover {
            background: #218838;
        }
        .image-preview {
            width: 150px;
            height: 150px;
            border: 1px dashed #ccc;
            margin-top: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }
        .image-preview img {
            max-width: 100%;
            max-height: 100%;
        }
        .category-options {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 5px;
        }
        .category-option {
            display: flex;
            align-items: center;
        }
        .category-option input {
            width: auto;
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>EarBudshub</h2>
        <a href="Dashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
        <a href="orderlist.jsp"><i class="fas fa-list"></i> Order List</a>
        <a href="Addproduct.jsp"><i class="fas fa-box"></i> Product</a>
        <a href="login.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
    
    <div class="main-content">
        <div class="header">
            <h2>Add Product</h2>
        </div>

        <div class="form-container">
            <form action="addProductServlet" method="Post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="productName">Product Name</label>
                    <input type="text" id="productName" name="productName" required>
                </div>
                
                <div class="form-group">
                    <label for="productDescription">Product Description</label>
                    <textarea id="productDescription" name="productDescription" rows="4" required></textarea>
                </div>
                
                <div class="form-group">
                    <label for="productPrice">Price ($)</label>
                    <input type="number" id="productPrice" name="productPrice" step="0.01" min="0" required>
                </div>
                
                <div class="form-group">
                    <label for="productStock">Stock Quantity</label>
                    <input type="number" id="productStock" name="productStock" min="0" required>
                </div>
                
                <div class="form-group">
                    <label for="productCategory">Category</label>
                    <select id="productCategory" name="productCategory" required>
                        <option value="">Select a category</option>
                        <option value="Electronics">Electronics</option>
                        <option value="Clothing">Clothing</option>
                        <option value="Home">Home</option>
                        <option value="Beauty">Beauty</option>
                        <option value="Sports">Sports</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="productImage">Product Image</label>
                    <input type="file" id="productImage" name="productImage" accept="image/*" required 
                           onchange="previewImage(event)">
                    <div class="image-preview" id="imagePreview">
                        <span>Image preview will appear here</span>
                    </div>
                </div>
                
                <div class="form-group" style="display: flex; gap: 10px;">
                    <button type="submit">Add Product</button>
                    <button type="submit" formaction="AddToCartServlet">Add to Cart</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        function previewImage(event) {
            const preview = document.getElementById('imagePreview');
            const file = event.target.files[0];
            const reader = new FileReader();
            
            preview.innerHTML = ''; // Clear previous content
            
            reader.onload = function(e) {
                const img = document.createElement('img');
                img.src = e.target.result;
                preview.appendChild(img);
            }
            
            if (file) {
                reader.readAsDataURL(file);
            }
        }
    </script>
</body>
</html>
