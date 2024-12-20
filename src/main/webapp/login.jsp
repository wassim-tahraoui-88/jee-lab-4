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
        if (error != null) out.println("<p style='color: red'>" + error + "</p>");
    %>

    <form method="post" action="verif">
        <label>
            Username
            <input type="text" name="username" required>
        </label>
        <label>
            Password
            <input type="password" name="password" required>
        </label>
        <button type="submit">Login</button>
    </form>
</body>
</html>
