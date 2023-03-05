<%@ page language="java" %>
<%@ page import="java.time.LocalTime" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Greeting Message</title>
</head>
<body>
    <%
        String name = "John"; // Replace with the actual name of the student
        LocalTime now = LocalTime.now();
        String message;
        if (now.isBefore(LocalTime.NOON)) {
            message = String.format("Good morning, %s, Welcome to COMP367", name);
        } else {
            message = String.format("Good afternoon, %s, Welcome to COMP367", name);
        }
    %>
    <h1><%= message %></h1>
</body>
</html>
