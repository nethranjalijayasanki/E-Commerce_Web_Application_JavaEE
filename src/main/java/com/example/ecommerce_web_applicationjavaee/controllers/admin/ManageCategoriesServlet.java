package com.example.ecommerce_web_applicationjavaee.controllers.admin;

import com.example.ecommerce_web_applicationjavaee.dao.CategoryDAO;
import com.example.ecommerce_web_applicationjavaee.models.Category;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/ManageCategoriesServlet")
public class ManageCategoriesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> categories = categoryDAO.getAllCategories();

        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("manage-categories.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryName = request.getParameter("categoryName");

        Category category = new Category(categoryName);
        CategoryDAO categoryDAO = new CategoryDAO();
        categoryDAO.addCategory(category);

        response.sendRedirect("manage-categories.jsp");
    }
}
