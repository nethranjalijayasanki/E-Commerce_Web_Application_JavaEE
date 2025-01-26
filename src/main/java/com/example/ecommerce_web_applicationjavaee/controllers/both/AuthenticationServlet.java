package com.example.ecommerce_web_applicationjavaee.controllers.both;

import com.example.ecommerce_web_applicationjavaee.dao.UserDAO;
import com.example.ecommerce_web_applicationjavaee.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/shared/AuthenticationServlet")
public class AuthenticationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve username and password from request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if credentials are valid
        UserDAO userDAO = new UserDAO();
        User user = userDAO.authenticateUser(username, password);

        if (user != null) {
            // If valid, set user in session and redirect to home page
            request.getSession().setAttribute("loggedInUser", user);
            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } else {
            // If invalid, redirect to login page with error message
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
