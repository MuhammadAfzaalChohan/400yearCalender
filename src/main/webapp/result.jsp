<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <h1>Day of the Week Result (1800–2200)</h1>

    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
<<<<<<< HEAD
        <p style="color: rgb(216, 108, 7);"><%= error %></p>
=======
        <p style="color: rgb(212, 13, 230);"><%= error %></p>
>>>>>>> 64cf04d72ea0e0a6bd37b83406ae5829aa8314ed
        <a href="index.jsp">Try Again</a>
    <%
        } else {
            int year = (Integer) request.getAttribute("year");
            int month = (Integer) request.getAttribute("month");
            int day = (Integer) request.getAttribute("day");
            String dayOfWeek = (String) request.getAttribute("dayOfWeek");
    %>
        <p><strong>Date:</strong> <%= year %>-<%= String.format("%02d", month) %>-<%= String.format("%02d", day) %></p>
        <p>\<><strong>Day of the Week:</strong><%= dayOfWeek %></p>
        <a href="index.jsp">Try Another Date</a>
    <%
        }
    %>
</body>
</html>