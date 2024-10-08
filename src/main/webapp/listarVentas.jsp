<%-- 
    Document   : listaVentas
    Created on : 7 oct 2024, 10:08:47
    Author     : EDSON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.edsondev26.Jakarta_EE_Exam_EIV.models.Venta"%>
<%@page import="com.edsondev26.Jakarta_EE_Exam_EIV.models.Producto"%>
<html>
    <head>
        <title>Ventas Registradas</title>
    </head>
    <body>
        <jsp:include page="menu.jsp" />

        <h2>Ventas registradas</h2>

        <table border="1">
            <thead>
                <tr>
                    <th>NIT</th>
                    <th>Apellido</th>
                    <th>Fecha</th>
                    <th>Productos</th>
                    <th>Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="totalGeneral" value="0" />
                <c:forEach var="venta" items="${ventas}">
                    <tr>
                        <td>${venta.nitCliente}</td>
                        <td>${venta.apellidoCliente}</td>
                        <td>${venta.fecha}</td>
                        <td>
                            <c:forEach var="producto" items="${venta.productos}">
                                <c:set var="subtotalProducto" value="${producto.cantidad * producto.precio}" />
                                ${producto.nombre} -  x${producto.cantidad}
                            </c:forEach>
                        </td>
                        <td>${venta.subtotal}</td>
                    </tr>
                    <c:set var="totalGeneral" value="${totalGeneral + venta.subtotal}" />
                </c:forEach>
            </tbody>
        </table>

        <h3>Total General: ${totalGeneral}</h3>
    </body>
</html>