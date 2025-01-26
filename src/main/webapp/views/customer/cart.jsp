<%--
  Created by IntelliJ IDEA.
  User: v com
  Date: 1/25/2025
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shopping Cart</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <h2 class="mt-5">Shopping Cart</h2>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">Product</th>
      <th scope="col">Quantity</th>
      <th scope="col">Price</th>
      <th scope="col">Total</th>
      <th scope="col">Actions</th>
    </tr>
    </thead>
    <tbody>
    <!-- Cart items (dynamically loaded from session or database) -->
    <tr>
      <td>Product 1</td>
      <td>
        <input type="number" class="form-control" value="1" min="1">
      </td>
      <td>$10</td>
      <td>$10</td>
      <td><a href="removeFromCart.jsp?id=1" class="btn btn-danger">Remove</a></td>
    </tr>
    <!-- More products here -->
    </tbody>
  </table>
  <a href="checkout.jsp" class="btn btn-success">Proceed to Checkout</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
