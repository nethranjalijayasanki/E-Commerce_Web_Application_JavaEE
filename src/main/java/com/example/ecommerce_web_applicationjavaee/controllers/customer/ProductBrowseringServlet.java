package com.example.ecommerce_web_applicationjavaee.controllers.customer;

import com.example.ecommerce_web_applicationjavaee.dao.ProductDAO;
import com.example.ecommerce_web_applicationjavaee.models.Product;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/customer/ProductBrowsingServlet")
public class ProductBrowseringServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.getAllProducts();

        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("browse-products.jsp");
        dispatcher.forward(request, response);
    }
}