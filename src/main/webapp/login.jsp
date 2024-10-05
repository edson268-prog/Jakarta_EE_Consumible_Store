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
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Contrase�a:</label>
        <input type="password" id="password" name="password" required><br>

        <button type="submit">Iniciar sesi�n</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <p style="color: red;">Credenciales inv�lidas, intente nuevamente.</p>
    <% } %>
</body>
</html>
