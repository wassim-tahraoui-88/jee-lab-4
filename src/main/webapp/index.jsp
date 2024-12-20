<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 4</title>
</head>
<body>
    <h1>Lab 4</h1>
    <%
        var status = request.getAttribute("status");
        if (status != null) out.println("<p style='color: blue'><i>" + status + "</i></p>");
    %>
    <a href="login.jsp">Connect</a>
    <a href="detail">Info Session</a>
</body>
</html>
