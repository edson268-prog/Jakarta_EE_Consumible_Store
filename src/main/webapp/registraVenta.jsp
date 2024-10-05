<%-- 
    Document   : registraVenta
    Created on : 5 oct 2024, 12:23:17
    Author     : EDSON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.edsondev26.Jakarta_EE_Exam_EIV.models.Venta"%>
<%@page import="com.edsondev26.Jakarta_EE_Exam_EIV.models.Producto"%>
<html>
    <head>
        <title>Ventas Registradas</title>
        <script src="scripts/registraVenta.js" type="text/javascript"></script>
    </head>
    <body>
        <h2>Registrar Venta</h2>

    <form action="agregarVenta" method="post">
        <label for="nit">NIT del Cliente:</label>
        <input type="text" id="nit" name="nit" required><br>

        <label for="apellido">Apellido del Cliente:</label>
        <input type="text" id="apellido" name="apellido" required><br>

        <label for="producto">Seleccionar Producto:</label>
        <select id="producto" name="producto">
                <option value="Azucar">Azucar - Bs.6</option>
                <option value="Gaseosa">Gaseosa - Bs.10</option>
                <option value="Hamburguesa">Hamburguesa - Bs.20</option>
                <option value="Leche">Leche - Bs.8</option>
                <option value="Mantequilla">Mantequilla - Bs.12</option>
            </select><br>

        <label for="cantidad">Cantidad:</label>
        <input type="number" id="cantidad" name="cantidad" value="1" required><br>

        <button type="button" onclick="agregarProducto()">Agregar Producto</button><br>

        <table border="1">
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody id="tablaProductos">
            </tbody>
        </table><br>

        <button type="submit">Registrar</button>
    </form>
    </body>
</html>