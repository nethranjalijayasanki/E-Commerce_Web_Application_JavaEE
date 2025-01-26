<%--
  Created by IntelliJ IDEA.
  User: v com
  Date: 1/25/2025
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2 class="mt-5">Checkout</h2>

    <!-- Order Summary -->
    <h4>Order Summary</h4>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Product</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
            <th scope="col">Total</th>
        </tr>
        </thead>
        <tbody>
        <!-- Dynamically loaded cart items -->
        <tr>
            <td>Product 1</td>
            <td>2</td>
            <td>$10</td>
            <td>$20</td>
        </tr>
        <tr>
            <td>Product 2</td>
            <td>1</td>
            <td>$15</td>
            <td>$15</td>
        </tr>
        <!-- More products here -->
        <tr>
            <td colspan="3" class="text-right"><strong>Total</strong></td>
            <td>$35</td>
        </tr>
        </tbody>
    </table>

    <!-- Shipping Information Form -->
    <h4 class="mt-4">Shipping Information</h4>
    <form action="placeOrder.jsp" method="POST">
        <div class="mb-3">
            <label for="fullName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Shipping Address</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>
        <div class="mb-3">
            <label for="city" class="form-label">City</label>
            <input type="text" class="form-control" id="city" name="city" required>
        </div>
        <div class="mb-3">
            <label for="state" class="form-label">State</label>
            <input type="text" class="form-control" id="state" name="state" required>
        </div>
        <div class="mb-3">
            <label for="zipCode" class="form-label">Zip Code</label>
            <input type="text" class="form-control" id="zipCode" name="zipCode" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone Number</label>
            <input type="tel" class="form-control" id="phone" name="phone" required>
        </div>

        <!-- Payment Method -->
        <h4 class="mt-4">Payment Method</h4>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="paymentMethod" id="creditCard" value="Credit Card" checked>
            <label class="form-check-label" for="creditCard">Credit Card</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="paymentMethod" id="paypal" value="PayPal">
            <label class="form-check-label" for="paypal">PayPal</label>
        </div>

        <!-- Credit Card Information -->
        <div id="creditCardDetails" class="mt-3">
            <div class="mb-3">
                <label for="cardNumber" class="form-label">Card Number</label>
                <input type="text" class="form-control" id="cardNumber" name="cardNumber" placeholder="XXXX XXXX XXXX XXXX" required>
            </div>
            <div class="mb-3">
                <label for="expiryDate" class="form-label">Expiry Date</label>
                <input type="month" class="form-control" id="expiryDate" name="expiryDate" required>
            </div>
            <div class="mb-3">
                <label for="cvv" class="form-label">CVV</label>
                <input type="text" class="form-control" id="cvv" name="cvv" required>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Place Order</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Toggle payment method fields based on selection
    document.getElementById('creditCard').addEventListener('change', function() {
        document.getElementById('creditCardDetails').style.display = 'block';
    });
    document.getElementById('paypal').addEventListener('change', function() {
        document.getElementById('creditCardDetails').style.display = 'none';
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
