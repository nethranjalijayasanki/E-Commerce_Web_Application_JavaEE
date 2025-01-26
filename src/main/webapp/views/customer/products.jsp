<%--
  Created by IntelliJ IDEA.
  User: v com
  Date: 1/25/2025
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2 class="mt-5">Browse Products</h2>

    <!-- Search bar -->
    <form action="searchAction.jsp" method="GET" class="d-flex">
        <input type="text" name="searchQuery" class="form-control" placeholder="Search products by name" required>
        <button type="submit" class="btn btn-primary ml-2">Search</button>
    </form>

    <!-- Sort dropdown -->
    <form action="sortAction.jsp" method="GET" class="mt-3">
        <select name="sortOption" class="form-select w-auto">
            <option value="priceAsc">Sort by Price: Low to High</option>
            <option value="priceDesc">Sort by Price: High to Low</option>
        </select>
        <button type="submit" class="btn btn-primary mt-2">Sort</button>
    </form>

    <!-- Product Grid -->
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <img src="product1.jpg" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Product 1</h5>
                    <p class="card-text">Price: $10</p>
                    <a href="addToCart.jsp?id=1" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="product2.jpg" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Product 2</h5>
                    <p class="card-text">Price: $15</p>
                    <a href="addToCart.jsp?id=2" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
        <!-- More products here -->
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body></html>
