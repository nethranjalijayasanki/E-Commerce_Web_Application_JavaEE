package com.example.ecommerce_web_applicationjavaee.dao;

import com.example.ecommerce_web_applicationjavaee.models.CartItem;
import com.example.ecommerce_web_applicationjavaee.utils.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    // Method to add a cart item to the database
    public void addCartItem(CartItem cartItem) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DbConnection.getInstance().getConnection();  // Assuming DatabaseConnection provides a valid connection
            String sql = "INSERT INTO cart (user_id, product_id, quantity) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1, cartItem.getUserId());  // Set user ID
            stmt.setInt(2, cartItem.getProductId());  // Set product ID
            stmt.setInt(3, cartItem.getQuantity());  // Set quantity

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Cart item added successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, null);
        }
    }

    // Method to get all cart items for a specific user
    public List<CartItem> getCartItemsByUserId(int userId) {
        List<CartItem> cartItems = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "SELECT * FROM cart WHERE user_id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int cartItemId = rs.getInt("id");
                int productId = rs.getInt("product_id");
                int quantity = rs.getInt("quantity");

                CartItem cartItem = new CartItem(cartItemId, userId, productId, quantity);
                cartItems.add(cartItem);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return cartItems;
    }

    // Method to update the quantity of a cart item
    public void updateCartItemQuantity(int cartItemId, int newQuantity) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "UPDATE cart SET quantity = ? WHERE id = ?";
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1, newQuantity);
            stmt.setInt(2, cartItemId);

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Cart item quantity updated successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, null);
        }
    }

    // Method to remove a cart item
    public void removeCartItem(int cartItemId) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "DELETE FROM cart WHERE id = ?";
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1, cartItemId);

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Cart item removed successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, null);
        }
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
