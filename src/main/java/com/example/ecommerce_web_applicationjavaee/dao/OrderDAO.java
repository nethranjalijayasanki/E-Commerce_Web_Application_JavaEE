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

public class OrderDAO {
    // Method to fetch all orders from the database
    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();  // Assuming DatabaseConnection provides the connection
            String sql = "SELECT * FROM orders";  // Replace 'orders' with your actual table name
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int orderId = rs.getInt("order_id");  // Replace with actual column name
                int userId = rs.getInt("user_id");    // Replace with actual column name
                Date orderDate = rs.getDate("order_date");
                List<Product> products= (List<Product>) rs.getArray("products");
                double totalAmount = rs.getDouble("total_amount");

                Order order = new Order(orderId, userId, orderDate, products);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return orders;
    }

    // Method to fetch orders for a specific user from the database
    public List<Order> getOrdersByUserId(int userId) {
        List<Order> orders = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "SELECT * FROM orders WHERE user_id = ?";  // Replace 'orders' and 'user_id' as needed
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int orderId = rs.getInt("order_id");
                Date orderDate = rs.getDate("order_date");
                List<Product> products= (List<Product>) rs.getArray("products");


                Order order = new Order(orderId, userId, orderDate, products);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return orders;
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
