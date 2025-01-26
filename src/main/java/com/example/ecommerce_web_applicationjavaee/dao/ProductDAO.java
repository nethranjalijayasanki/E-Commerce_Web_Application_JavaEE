package com.example.ecommerce_web_applicationjavaee.dao;

import com.example.ecommerce_web_applicationjavaee.models.Product;
import com.example.ecommerce_web_applicationjavaee.utils.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    // Method to add a product to the database
    public void addProduct(Product product) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DbConnection.getInstance().getConnection();  // Assuming DatabaseConnection class provides the connection
            String sql = "INSERT INTO products (name, price, category) VALUES (?, ?, ?)";  // Adjust column names based on your database schema
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, product.getName());  // Set product name
            stmt.setDouble(2, product.getPrice());  // Set product price
            stmt.setString(3, product.getCategory());  // Set product category

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Product added successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, null);
        }
    }

    // Method to fetch all products from the database
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "SELECT * FROM products";  // Adjust table name 'products' as per your database
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");  // Assuming 'id' is the primary key in 'products' table
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String category = rs.getString("category");

                Product product = new Product(id, name, price, category);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return products;
    }

    // Helper method to close database resources
    private void closeResources(Connection conn, PreparedStatement stmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
