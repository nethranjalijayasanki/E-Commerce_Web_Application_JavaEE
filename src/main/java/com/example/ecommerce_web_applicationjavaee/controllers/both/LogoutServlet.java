package com.example.ecommerce_web_applicationjavaee.controllers.both;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/shared/LogoutServlet")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Invalidate the current session to log the user out
        if (request.getSession(false) != null) {
            request.getSession().invalidate();
        }

        // Redirect the user to the login page or homepage
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
}

