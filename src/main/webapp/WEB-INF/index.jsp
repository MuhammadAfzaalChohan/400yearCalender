<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>400-Year Calendar</title>
</head>
<body>
    <h1>Check Day of the Week (1800–2200)</h1>
    <form method="post" action="CalendarServlet">
        <label>Year (1800–2200):</label>
        <input type="number" name="year" min="1800" max="2200" required><br><br>

        <label>Month (1–12):</label>
        <input type="number" name="month" min="1" max="12" required><br><br>

        <label>Day (1–31):</label>
        <input type="number" name="day" min="1" max="31" required><br><br>

        <input type="submit" value="Check Day">
    </form>
</body>
</html>
