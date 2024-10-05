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
    <h2>Iniciar Sesión</h2>

    <form action="/Jakarta_EE_Exam_EIV-0.0.1-SNAPSHOT/login" method="post">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required><br>

        <button type="submit">Iniciar sesión</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <p style="color: red;">Credenciales inválidas, intente nuevamente.</p>
    <% } %>
</body>
</html>
