package com.example.ecommerce_web_applicationjavaee.controllers.admin;

import com.example.ecommerce_web_applicationjavaee.dao.ProductDAO;
import com.example.ecommerce_web_applicationjavaee.models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admin/AddProductServlet")
public class AddProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String category = request.getParameter("category");

        Product product = new Product(id,name, price, category);
        ProductDAO productDAO = new ProductDAO();
        productDAO.addProduct(product);

        response.sendRedirect("view-products.jsp");
    }
}
