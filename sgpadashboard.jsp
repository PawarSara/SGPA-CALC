<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.stream.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>SGPA Calculation</title>
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
        <h1>SGPA Result</h1>

        <%
        	double totalGradePoints = 0.0;
        	int totalCredits = 0;
        
            // Retrieve the number of subjects from the previous form
            int subjectCount = Integer.parseInt(request.getParameter("subjectCount"));

            // Variables to store subject names and grades for the pie chart
            List<String> subjectNames = new ArrayList<>();
            List<Integer> subjectGrades = new ArrayList<>();

            // Loop through each subject's data
            for (int i = 1; i <= subjectCount; i++) {
                String subjectName = request.getParameter("subjectName" + i);
                int credits = Integer.parseInt(request.getParameter("credits" + i));
                int grade = Integer.parseInt(request.getParameter("grade" + i));

                // Add subject names and grades for the pie chart
                subjectNames.add(subjectName);
                subjectGrades.add(grade);
                totalGradePoints += credits * grade;
                totalCredits += credits;
            }

            // Calculate SGPA
            double sgpa = totalGradePoints / totalCredits; // Ensure SGPA calculation here if required
        %>
        
        <div class="result">
        <h2>Your SGPA is: <%= String.format("%.2f", sgpa) %></h2>
   		</div>
		
       <!-- <p>Subject-Wise Grade Distribution (Pie Chart)</p>-->
        <canvas id="gradeChart" width="400px" height="400px"></canvas><br><br>

		
        <!-- Go back link -->
        <a href="sgpa.jsp" style="color: pink">Calculate again</a> <br><br>
        <a href="index.jsp" style="color: pink" >Home</a>
    
    	
    </div>
    

    <!-- Script to render pie chart using Chart.js -->
    <script>
        // Get subject names and grades from the server-side
        const subjectNames = [<%= subjectNames.stream().map(name -> "'" + name + "'").collect(Collectors.joining(",")) %>];
     	const subjectGrades = [<%= subjectGrades.stream().map(String::valueOf).collect(Collectors.joining(",")) %>];

        // Log the data to the console for debugging
        console.log("Subject Names:", subjectNames);
        console.log("Subject Grades:", subjectGrades);

        // Create a pie chart
        const ctx = document.getElementById('gradeChart').getContext('2d');
        const gradeChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: subjectNames,
                datasets: [{
                    label: 'Grades',
                    data: subjectGrades,
                    
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
                            color: 'white', // Change legend label text color
                            font: {
                                size: 14,       // Change legend label font size
                                family: 'Poppins', // Change legend label font family
                                weight: 'bold'  // Change font weight to bold
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


