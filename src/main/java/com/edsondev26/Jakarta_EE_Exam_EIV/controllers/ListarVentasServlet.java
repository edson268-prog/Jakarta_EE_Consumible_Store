/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.edsondev26.Jakarta_EE_Exam_EIV.controllers;

import com.edsondev26.Jakarta_EE_Exam_EIV.models.Venta;
import com.edsondev26.Jakarta_EE_Exam_EIV.models.VentaBean;
import jakarta.inject.Inject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author EDSON
 */
@WebServlet("/listarVentas")
public class ListarVentasServlet extends HttpServlet {

    @Inject
    private VentaBean ventaBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Venta> ventas = ventaBean.obtenerVentas();
        request.setAttribute("ventas", ventas);
        request.getRequestDispatcher("listarVentas.jsp").forward(request, response);
    }
}
