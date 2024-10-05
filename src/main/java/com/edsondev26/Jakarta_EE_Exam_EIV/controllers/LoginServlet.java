/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.edsondev26.Jakarta_EE_Exam_EIV.controllers;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author EDSON
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminUser = getServletContext().getInitParameter("adminUser");
        String adminPass = getServletContext().getInitParameter("adminPass");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (adminUser.equals(username) && adminPass.equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            response.sendRedirect("registraVenta.jsp");
        } else {
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
