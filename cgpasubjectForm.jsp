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

        <%
            // Retrieve the number of subjects from the previous form
            int semesterCount = Integer.parseInt(request.getParameter("semesterCount"));
        %>

        <!-- Step 2: Generate subject rows dynamically based on user input -->
        <form action="cgpadashboard.jsp" method="post">
            <table>
                <thead>
                    <tr>
                        <th>Semister No.</th>
                        <th>SGPA</th>
                        <th>Credits</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Loop to generate the form fields for each subject
                        for (int i = 1; i <= semesterCount; i++) {
                    %>
                    <tr>
                        <td><%= i %></td>
                        <td><input type="number" name="sgpa<%= i %>" min="1" max="10" title="SGPA must be from 1 to 10" required></td>
                        <td><input type="number" name="credits<%= i %>" min="1" max="5" title="Credits must from 1 to 5" required></td>
                        
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <input type="hidden" name="semesterCount" value="<%= semesterCount %>">
            <button type="submit">Calculate CGPA</button>
        </form>
    </div>
</body>
</html>