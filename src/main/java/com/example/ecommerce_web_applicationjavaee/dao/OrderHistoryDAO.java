package com.example.ecommerce_web_applicationjavaee.dao;

import com.example.ecommerce_web_applicationjavaee.models.Order;
import com.example.ecommerce_web_applicationjavaee.models.Product;
import com.example.ecommerce_web_applicationjavaee.utils.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderHistoryDAO {
    // Method to fetch the order history for a specific user
    public List<Order> getOrderHistoryByUserId(int userId) {
        List<Order> orderHistory = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();  // Assuming DatabaseConnection provides the connection
            String sql = "SELECT * FROM orders WHERE user_id = ? ORDER BY order_date DESC"; // Replace 'orders' with actual table name
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int orderId = rs.getInt("order_id");  // Replace with actual column name
                Date orderDate = rs.getDate("order_date");
                List<Product> products = (List<Product>) rs.getArray("products");

                // Optionally, you can fetch additional details such as order items if required
                Order order = new Order(orderId, userId, orderDate, products);
                orderHistory.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return orderHistory;
    }

    // Optional: Method to fetch order details for a specific order ID
    public Order getOrderDetails(int orderId) {
        Order order = null;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "SELECT * FROM orders WHERE order_id = ?"; // Replace with actual table name and columns
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            rs = stmt.executeQuery();

            if (rs.next()) {
                int userId = rs.getInt("user_id");
                Date orderDate = rs.getDate("order_date");
                List<Product> products = (List<Product>) rs.getArray("products");

                // Create the Order object
                order = new Order(orderId, userId, orderDate, products);

                // Optionally, fetch additional details such as order items
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return order;
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
