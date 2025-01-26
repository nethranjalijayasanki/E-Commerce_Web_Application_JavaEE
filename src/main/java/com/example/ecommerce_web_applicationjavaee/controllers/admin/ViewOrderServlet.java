package com.example.ecommerce_web_applicationjavaee.controllers.admin;

import com.example.ecommerce_web_applicationjavaee.dao.OrderDAO;
import com.example.ecommerce_web_applicationjavaee.models.Order;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/ViewOrdersServlet")
public class ViewOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDAO orderDAO = new OrderDAO();
        List<Order> orders = orderDAO.getAllOrders();

        request.setAttribute("orders", orders);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view-orders.jsp");
        dispatcher.forward(request, response);
    }
}
