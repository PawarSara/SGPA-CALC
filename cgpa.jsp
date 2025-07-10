<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SGPA Calculator</title>
    <link rel="stylesheet" href="calc.css">
</head>
<body>
    <div class="container">
        <h1>CGPA Calculator</h1>

        <!-- Step 1: Ask user to input the number of subjects -->
        <form action="cgpasubjectForm.jsp" method="post">
            <label for="semesterCount">Enter the number of semesters:</label>
            <input type="number" name="semesterCount" id="semesterCount" min="1" required>
            <button type="submit">Next</button>
        </form>
    </div>
</body>
</html>