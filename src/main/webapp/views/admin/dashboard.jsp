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
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        .dashboard-header {
            background-color: #343a40;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .card {
            margin: 20px 0;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <!-- Dashboard Header -->
    <div class="dashboard-header">
        <h1>Administrator Dashboard</h1>
    </div>

    <!-- Main Content -->
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action active">Dashboard</a>
                <a href="#productManagement" class="list-group-item list-group-item-action">Product Management</a>
                <a href="#categoryManagement" class="list-group-item list-group-item-action">Category Management</a>
                <a href="#orderManagement" class="list-group-item list-group-item-action">Order Management</a>
                <a href="#userManagement" class="list-group-item list-group-item-action">User Management</a>
            </div>
        </div>

        <!-- Main Panel -->
        <div class="col-md-9">
            <!-- Product Management Section -->
            <div id="productManagement" class="card">
                <div class="card-header">
                    <h5>Product Management</h5>
                </div>
                <div class="card-body">
                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addProductModal">Add Product</button>
                    <table class="table table-striped mt-4">
                        <thead>
                        <tr>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Example Products (Add dynamic data from server) -->
                        <tr>
                            <td><img src="product1.jpg" alt="Product 1" class="img-fluid" style="width: 50px;"></td>
                            <td>Cheese Pizza</td>
                            <td>Pizza</td>
                            <td>$10</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Update</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="product2.jpg" alt="Product 2" class="img-fluid" style="width: 50px;"></td>
                            <td>Burger</td>
                            <td>Burgers</td>
                            <td>$5</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Update</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Category Management Section -->
            <div id="categoryManagement" class="card">
                <div class="card-header">
                    <h5>Category Management</h5>
                </div>
                <div class="card-body">
                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addCategoryModal">Add Category</button>
                    <table class="table table-striped mt-4">
                        <thead>
                        <tr>
                            <th>Category Name</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Example Categories -->
                        <tr>
                            <td>Pizza</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Update</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Burgers</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Update</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Order Management Section -->
            <div id="orderManagement" class="card">
                <div class="card-header">
                    <h5>Order Management</h5>
                </div>
                <div class="card-body">
                    <table class="table table-striped mt-4">
                        <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Products</th>
                            <th>Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Example Orders -->
                        <tr>
                            <td>#12345</td>
                            <td>John Doe</td>
                            <td>Cheese Pizza, Burger</td>
                            <td>Shipped</td>
                        </tr>
                        <tr>
                            <td>#12346</td>
                            <td>Jane Smith</td>
                            <td>Cheese Pizza</td>
                            <td>Pending</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- User Management Section -->
            <div id="userManagement" class="card">
                <div class="card-header">
                    <h5>User Management</h5>
                </div>
                <div class="card-body">
                    <table class="table table-striped mt-4">
                        <thead>
                        <tr>
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Example Users -->
                        <tr>
                            <td>#001</td>
                            <td>John Doe</td>
                            <td>john@example.com</td>
                            <td>Active</td>
                            <td>
                                <button class="btn btn-success btn-sm">Activate</button>
                                <button class="btn btn-warning btn-sm">Deactivate</button>
                            </td>
                        </tr>
                        <tr>
                            <td>#002</td>
                            <td>Jane Smith</td>
                            <td>jane@example.com</td>
                            <td>Inactive</td>
                            <td>
                                <button class="btn btn-success btn-sm">Activate</button>
                                <button class="btn btn-warning btn-sm">Deactivate</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Product Modal -->
    <div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addProductModalLabel">Add New Product</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="productName" class="form-label">Product Name</label>
                            <input type="text" class="form-control" id="productName">
                        </div>
                        <div class="mb-3">
                            <label for="productCategory" class="form-label">Category</label>
                            <select class="form-select" id="productCategory">
                                <option value="Pizza">Pizza</option>
                                <option value="Burger">Burger</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="productPrice" class="form-label">Price</label>
                            <input type="number" class="form-control" id="productPrice">
                        </div>
                        <div class="mb-3">
                            <label for="productImage" class="form-label">Image</label>
                            <input type="file" class="form-control" id="productImage">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Add Product</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Category Modal -->
    <div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="addCategoryModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addCategoryModalLabel">Add New Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="categoryName" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="categoryName">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Add Category</button>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
