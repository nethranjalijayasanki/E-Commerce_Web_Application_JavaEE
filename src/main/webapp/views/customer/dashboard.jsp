<%--
  Created by IntelliJ IDEA.
  User: v com
  Date: 1/25/2025
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Customer Dashboard</title>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">FoodStore</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../logout.jsp">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Product Browsing Section -->
<div class="container mt-4">
    <h2>Browse Products</h2>
    <!-- Category Filter, Search, Sort by Price -->
    <div class="row mb-3">
        <div class="col-md-4">
            <select class="form-select" aria-label="Category select">
                <option selected>Select Category</option>
                <option value="1">Fruits</option>
                <option value="2">Vegetables</option>
                <option value="3">Snacks</option>
            </select>
        </div>
        <div class="col-md-4">
            <input type="text" class="form-control" id="productSearch" placeholder="Search by Name">
        </div>
        <div class="col-md-4">
            <select class="form-select" aria-label="Sort by price">
                <option selected>Sort by Price</option>
                <option value="1">Low to High</option>
                <option value="2">High to Low</option>
            </select>
        </div>
    </div>

    <!-- Product List -->
    <div class="row">
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="apple.jpg" class="card-img-top" alt="Apple">
                <div class="card-body">
                    <h5 class="card-title">Apple</h5>
                    <p class="card-text">$1.99</p>
                    <a href="cart.jsp?add=apple" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="banana.jpg" class="card-img-top" alt="Banana">
                <div class="card-body">
                    <h5 class="card-title">Banana</h5>
                    <p class="card-text">$0.99</p>
                    <a href="cart.jsp?add=banana" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
        <!-- Add more products here -->
    </div>
</div>

<!-- Shopping Cart Section -->
<div class="container mt-4">
    <h2>Your Cart</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Product</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Apple</td>
            <td>
                <input type="number" value="1" class="form-control" min="1">
            </td>
            <td>$1.99</td>
            <td><a href="cart.jsp?remove=apple" class="btn btn-danger">Remove</a></td>
        </tr>
        <!-- Add more cart items here -->
        </tbody>
    </table>
    <a href="checkout.jsp" class="btn btn-success">Proceed to Checkout</a>
</div>

<!-- Order History Section -->
<div class="container mt-4">
    <h2>Order History</h2>
    <ul class="list-group">
        <li class="list-group-item">Order #123 - Placed on 2025-01-22</li>
        <!-- Add more orders here -->
    </ul>
</div>

<%--<!-- Profile Management Section -->--%>
<%--<div class="container mt-4">--%>
<%--    <h2>Update Profile</h2>--%>
<%--    <form>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="username" class="form-label">Username</label>--%>
<%--            <input type="text" class="form-control" id="username" value="JohnDoe123" disabled>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="email" class="form-label">Email address</label>--%>
<%--            <input type="email" class="form-control" id="email" value="johndoe@example.com">--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="newPassword" class="form-label">New Password</label>--%>
<%--            <input type="password" class="form-control" id="newPassword">--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary">Update Profile</button>--%>
<%--    </form>--%>
<%--</div>--%>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-4">
    <p>&copy; 2025 FoodStore. All rights reserved.</p>
</footer>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gyb+7kKnujs+q6zTmtTtI4+XZrP7K5T1vR7l7cSgCwA4zXrC2P" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
