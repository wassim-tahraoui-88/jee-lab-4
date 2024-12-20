<%@ page import="com.horizon.lab.model.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
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
        var user = (User) session.getAttribute("login");
        if (user == null) out.println("<p style='color: red'>You must log in to view this information.</p>");
		else {
			var systemDate = new Date(System.currentTimeMillis());
			var creationDate = new Date(session.getCreationTime());
			var sessionId = session.getId();

            var timeElapsed = new Date(systemDate.getTime() - creationDate.getTime());
            var hours = TimeUnit.MILLISECONDS.toHours(timeElapsed.getTime());
            var minutes = TimeUnit.MILLISECONDS.toMinutes(timeElapsed.getTime()) % 60;
            var seconds = TimeUnit.MILLISECONDS.toSeconds(timeElapsed.getTime()) % 60;

            out.println("<p>Session ID: " + sessionId + "</p>");
			out.println("<p>Username: " + user.username() + "</p>");
			out.println("<p>Password: " + user.password() + "</p>");
			out.println("<p>Session creation date: " + creationDate + "</p>");
			out.println("<p>System date: " + systemDate + "</p>");
            out.println("<p>Time elapsed: " + hours + " hours, " + minutes + " minutes, " + seconds + " seconds</p>");
        }
    %>
    <a href="logout">Logout</a>
</body>
</html>
