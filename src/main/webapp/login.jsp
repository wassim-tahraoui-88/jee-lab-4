<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 4</title>
</head>
<body>
    <h1>Login</h1>
    <%
        var error = request.getAttribute("error");
        if (error == null) return;
        out.println("<p style='color: red'>" + error + "</p>");
    %>

    <form method="post" action="verif">
        <label>
            <input type="text" name="username" required>
            Username
        </label>
        <label>
            <input type="password" name="password" required>
            Password
        </label>
    </form>
    <a href="login.jsp">Connect</a>
    <a href="detail">Info Session</a>
</body>
</html>
