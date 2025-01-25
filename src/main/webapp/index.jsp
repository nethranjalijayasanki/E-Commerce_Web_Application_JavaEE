<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <meta name="description" content="this is the description">
    <meta name="keywords" content="java, html, css, js">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>E-Commerce web application</title>
    <style>
        body{
            height: 100vh;
            background: url("assets/img/background.png")center/cover no-repeat;
        }
    </style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container-fluid" >
        <!-- Brand Logo -->
        <a class="navbar-brand" href="#">
            <i class="fas fa-store"></i> E-Commerce
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <!-- Admin Dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="adminDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user-shield"></i> Admin
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="adminDropdown">
                        <li><a class="dropdown-item" href="views/admin/dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                        <li><a class="dropdown-item" href="admin/products.jsp"><i class="fas fa-box"></i> Manage Products</a></li>
                        <li><a class="dropdown-item" href="admin/categories.jsp"><i class="fas fa-list"></i> Manage Categories</a></li>
                        <li><a class="dropdown-item" href="admin/orders.jsp"><i class="fas fa-clipboard-list"></i> Manage Orders</a></li>
                        <li><a class="dropdown-item" href="admin/users.jsp"><i class="fas fa-users"></i> Manage Users</a></li>
                    </ul>
                </li>

                <!-- Customer Dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="customerDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user"></i> Customer
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="customerDropdown">
                        <li><a class="dropdown-item" href="views/customer/dashboard.jsp"><i class="fas fa-home"></i> Dashboard</a></li>
                        <li><a class="dropdown-item" href="customer/products.jsp"><i class="fas fa-search"></i> Browse Products</a></li>
                        <li>
                            <a class="dropdown-item d-flex justify-content-between align-items-center" href="customer/cart.jsp">
                                <span><i class="fas fa-shopping-cart"></i> View Cart</span>
                                <span class="badge bg-danger">3</span>
                            </a>
                        </li>
                        <li><a class="dropdown-item" href="customer/orders.jsp"><i class="fas fa-history"></i> Order History</a></li>
                        <li><a class="dropdown-item" href="customer/profile.jsp"><i class="fas fa-user-cog"></i> Profile</a></li>
                    </ul>
                </li>
            </ul>

            <!-- Right Side Navbar -->
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="notificationsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-bell"></i> Notifications
                        <span class="badge bg-danger">5</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="notificationsDropdown">
                        <li><a class="dropdown-item" href="#"><i class="fas fa-info-circle"></i> New Order Received</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fas fa-exclamation-triangle"></i> Low Stock Alert</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fas fa-user-plus"></i> New User Registered</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item text-center" href="#">View All Notifications</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">
                        <i class="fas fa-sign-out-alt"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>


</nav>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>