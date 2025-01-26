package com.example.ecommerce_web_applicationjavaee.dao;

import com.example.ecommerce_web_applicationjavaee.models.Category;
import com.example.ecommerce_web_applicationjavaee.utils.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    // Method to fetch all categories from the database
    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DbConnection.getInstance().getConnection();  // Assuming DatabaseConnection provides a valid connection
            String sql = "SELECT * FROM categories";  // Adjust table name to match your database
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");  // Assuming 'id' is the primary key
                String name = rs.getString("name");  // Assuming 'name' is a column in the 'categories' table
                String description = rs.getString("description");  // Optional, adjust based on your schema

                Category category = new Category(id, name, description);
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }

        return categories;
    }

    // Method to add a new category to the database
    public void addCategory(Category category) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DbConnection.getInstance().getConnection();
            String sql = "INSERT INTO categories (name, description) VALUES (?, ?)";  // Adjust column names as needed
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, category.getName());
            stmt.setString(2, category.getDescription());  // Set category description

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Category added successfully!");
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
