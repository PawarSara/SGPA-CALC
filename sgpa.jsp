<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SGPA Calculator</title>
    <link rel="stylesheet" href="calc.css">
</head>
<body>
    <div class="container">
        <h1>SGPA Calculator</h1>

        <!-- Step 1: Ask user to input the number of subjects -->
        <form action="sgpasubjectForm.jsp" method="post">
            <label for="subjectCount">Enter the number of subjects:</label>
            <input type="number" name="subjectCount" id="subjectCount" min="1" required>
            <button type="submit">Next</button>
        </form>
    </div>
</body>
</html>
