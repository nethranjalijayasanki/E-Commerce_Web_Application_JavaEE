package com.example.ecommerce_web_applicationjavaee.controllers.customer;

import com.example.ecommerce_web_applicationjavaee.dao.CartDAO;
import com.example.ecommerce_web_applicationjavaee.models.CartItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/customer/CartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("Id"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        CartItem cartItem = new CartItem(id,userId,productId, quantity);
        CartDAO cartDAO = new CartDAO();
        cartDAO.addCartItem(cartItem);

        response.sendRedirect("view-cart.jsp");
    }
}