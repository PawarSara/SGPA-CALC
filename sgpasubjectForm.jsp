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

        <%
            // Retrieve the number of subjects from the previous form
            int subjectCount = Integer.parseInt(request.getParameter("subjectCount"));
        
        %>

        <!-- Step 2: Generate subject rows dynamically based on user input -->
        <form action="sgpadashboard.jsp" method="post">
            <table>
                <thead>
                    <tr>
                        <th>Serial No.</th>
                        <th>Subject Name</th>
                        <th>Credits</th>
                        <th>Grade</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Loop to generate the form fields for each subject
                        for (int i = 1; i <= subjectCount; i++) {
                    %>
                    <tr>
                        <td><%= i %></td>
                        <td><input type="text" name="subjectName<%= i %>" pattern="[A-Za-z\s]+" title="Only alphabetical characters and spaces are allowed" required></td>
                        <td><input type="number" name="credits<%= i %>" min="1" max="5" title="Credits must be from 1 to 5" required></td>
                        <td>
                            <select name="grade<%= i %>" required>
                                <option value="10">A+(10)</option>
                                <option value="9">A(9)</option>
                                <option value="8">B+(8)</option>
                                <option value="7">B(7)</option>
                                <option value="6">C(6)</option>
                                <option value="5">D(5)</option>
                                <option value="0">F(0)</option>
                            </select>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <input type="hidden" name="subjectCount" value="<%= subjectCount %>">
            <button type="submit">Calculate SGPA</button>
        </form>
    </div>
</body>
</html>
