<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.stream.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>CGPA Calculation</title>
    <link rel="stylesheet" href="dashboard.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .container {
            width: 80%;
            margin: 50px auto;
        }
        canvas {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CGPA Result</h1>

        <%
            double totalGradePoints = 0.0;
            int totalCredits = 0;
            double cgpa = 0.0;

            // Retrieve the number of semesters from the previous form
            int semesterCount = Integer.parseInt(request.getParameter("semesterCount"));

            // Variables to store semester names and SGPAs for the pie chart
            List<String> semesterNames = new ArrayList<>();
            List<Double> semesterSgpas = new ArrayList<>();

            // Loop through each semester's data
            for (int i = 1; i <= semesterCount; i++) {
                double sgpa = Double.parseDouble(request.getParameter("sgpa" + i));  // SGPA for the semester
                int credits = Integer.parseInt(request.getParameter("credits" + i));  // Credits for the semester
                
                // Add semester name (e.g., "Semester 1", "Semester 2") and SGPA for the pie chart
                semesterNames.add("Semester " + i);
                semesterSgpas.add(sgpa);

                // Calculate total grade points for CGPA
                totalCredits += credits;
                totalGradePoints += sgpa * credits;
            }

            // Calculate CGPA
            if (totalCredits > 0) {
                cgpa = totalGradePoints / totalCredits;
            }
        %>
        
        <div class="result">
            <h2>Your CGPA is: <%= String.format("%.2f", cgpa) %></h2>
        </div>
        
        <!-- Pie Chart to Show Semester-wise SGPA Distribution -->
        <canvas id="gradeChart" width="400px" height="400px"></canvas><br><br>
    
    <a href="tempsgpa.jsp" style="color: pink">Calculate again</a> <br><br>
        <a href="index.jsp" style="color: pink" >Home</a>
    
    </div>

    <!-- Script to render pie chart using Chart.js -->
    <script>
        // Get semester names and SGPAs from the server-side
        const semesterNames = [<%= semesterNames.stream().map(name -> "\"" + name + "\"").collect(Collectors.joining(",")) %>];
        const semesterSgpas = [<%= semesterSgpas.stream().map(String::valueOf).collect(Collectors.joining(",")) %>];

        // Log the data to the console for debugging
        console.log("Semester Names:", semesterNames);
        console.log("Semester SGPAs:", semesterSgpas);

        // Create a pie chart
        const ctx = document.getElementById('gradeChart').getContext('2d');
        const gradeChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: semesterNames,
                datasets: [{
                    label: 'Semester-wise SGPA',
                    data: semesterSgpas,
                    backgroundColor: [
                        '#FF6384',
                        '#36A2EB',
                        '#FFCE56',
                        '#4BC0C0',
                        '#9966FF',
                        '#FF9F40'
                    ],
                    hoverBackgroundColor: [
                        '#FF6384',
                        '#36A2EB',
                        '#FFCE56',
                        '#4BC0C0',
                        '#9966FF',
                        '#FF9F40'
                    ]
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'right',
                        labels: {
                            color: 'white',
                            font: {
                                size: 14,
                                family: 'Poppins',
                                weight: 'bold'
                            }
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                let label = context.label || '';
                                if (label) {
                                    label += ': ';
                                }
                                label += context.raw;
                                return label;
                            }
                        }
                    }
                },
                animation: {
                    animateScale: true,
                    animateRotate: true
                }
            }
        });
    </script>
</body>
</html>

