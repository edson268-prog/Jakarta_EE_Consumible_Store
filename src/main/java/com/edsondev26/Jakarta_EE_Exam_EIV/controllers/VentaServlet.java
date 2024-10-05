/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.edsondev26.Jakarta_EE_Exam_EIV.controllers;

import com.edsondev26.Jakarta_EE_Exam_EIV.models.VentaBean;
import com.edsondev26.Jakarta_EE_Exam_EIV.models.Producto;
import com.edsondev26.Jakarta_EE_Exam_EIV.models.Venta;
import jakarta.annotation.PostConstruct;
import jakarta.ejb.EJB;
import jakarta.inject.Inject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author EDSON
 */
@WebServlet("/agregarVenta")
public class VentaServlet extends HttpServlet {
    @EJB
    private VentaBean ventaBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ventas", ventaBean.obtenerVentas());
        request.getRequestDispatcher("listarVentas.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String nitCliente = request.getParameter("nit");
    String apellidoCliente = request.getParameter("apellido");
    
    String[] productosSeleccionados = request.getParameterValues("producto");
    String[] cantidades = request.getParameterValues("cantidad");

    List<Producto> productos = new ArrayList<>();
    
    for (int i = 0; i < productosSeleccionados.length; i++) {
        String nombreProducto = productosSeleccionados[i];
        int cantidad = Integer.parseInt(cantidades[i]);
        double precio = obtenerPrecio(nombreProducto);

        Producto producto = new Producto(nombreProducto, precio, cantidad);
        productos.add(producto);
    }
    
    Venta venta = new Venta(nitCliente, apellidoCliente, new Date(), productos);

    ventaBean.agregarVenta(venta);

    response.sendRedirect("registraVenta.jsp");
}
    
    private double obtenerPrecio(String nombreProducto) {
        switch (nombreProducto) {
            case "Azucar": return 6;
            case "Gaseosa": return 10;
            case "Hamburguesa": return 20;
            case "Leche": return 8;
            case "Mantequilla": return 12;
            default: return 0;
        }
    }
}
