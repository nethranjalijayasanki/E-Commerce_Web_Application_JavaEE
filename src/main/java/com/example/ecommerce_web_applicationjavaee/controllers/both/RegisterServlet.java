package com.example.ecommerce_web_applicationjavaee.controllers.both;

import com.example.ecommerce_web_applicationjavaee.dao.UserDAO;
import com.example.ecommerce_web_applicationjavaee.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/shared/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean isActive = Boolean.parseBoolean(request.getParameter("isActive"));

        User user = new User(id,username,email,password,isActive);
        UserDAO userDAO = new UserDAO();
        userDAO.addUser(user);

        response.sendRedirect("login.jsp");
    }
}