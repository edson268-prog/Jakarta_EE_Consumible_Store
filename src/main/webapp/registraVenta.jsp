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
        <jsp:include page="menu.jsp" />

        <p>Usuario Activo: ${sessionScope.username}</p>

        <h2>Registrar Venta</h2>

        <form action="agregarVenta" method="post">

            <table border="1">
                <tbody>
                    <tr>
                        <td><label for="nit">NIT del Cliente:</label></td>
                        <td><input type="text" id="nit" name="nit" required></td>
                    </tr>
                    <tr>
                        <td><label for="apellido">Apellido del Cliente:</label></td>
                        <td><input type="text" id="apellido" name="apellido" required></td>
                    </tr>
                    <tr>
                        <td><label for="producto">Seleccionar Producto:</label></td>
                        <td><select id="producto" name="producto">
                                <option value="Azucar">Azucar - Bs.6</option>
                                <option value="Gaseosa">Gaseosa - Bs.10</option>
                                <option value="Hamburguesa">Hamburguesa - Bs.20</option>
                                <option value="Leche">Leche - Bs.8</option>
                                <option value="Mantequilla">Mantequilla - Bs.12</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><label for="cantidad">Cantidad:</label></td>
                        <td><input type="number" id="cantidad" name="cantidad" value="1" required></td>
                    </tr>
                    <tr>
                        <td><button type="button" onclick="agregarProducto()">Agregar Producto</button></td>
                    </tr>
                </tbody>
            </table><br>

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