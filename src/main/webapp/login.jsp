<%-- 
    Document   : login
    Created on : 5 oct 2024, 11:12:34
    Author     : EDSON
--%>

<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h2>Iniciar Sesi�n</h2>

        <form action="/Jakarta_EE_Exam_EIV-0.0.1-SNAPSHOT/login" method="post">
            <table border="1">
                <tbody>
                    <tr>
                        <td><label for="username">Usuario:</label></td>
                        <td><input type="text" id="username" name="username" required></td>
                    </tr>
                    <tr>
                        <td><label for="password">Contrase�a:</label></td>
                        <td><input type="password" id="password" name="password" required></td>
                    </tr>
                    <tr>
                        <td><button type="submit">Iniciar sesi�n</button></td>
                    </tr>
                </tbody>
            </table>
        </form>

        <% if (request.getParameter("error") != null) { %>
        <p style="color: red;">Credenciales inv�lidas, intente nuevamente.</p>
        <% }%>
    </body>
</html>
