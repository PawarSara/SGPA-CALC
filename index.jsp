<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SGPA/CGPA Calculator - Home</title>

    <!-- External fonts and icons -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Custom CSS styles -->
    <link rel="stylesheet" href="style.css">

</head>
<body>

    <!-- Header with title and navigation -->
    <header>
        <h1>SGPA/CGPA Calculator</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="sgpa.jsp">SGPA Calculator</a></li>
                <li><a href="cgpa.jsp">CGPA Calculator</a></li>
                <!--  <li><a href="sgpaToPercentage.jsp">SGPA to Percentage</a></li>
                <li><a href="percentageCalculator.jsp">Percentage Calculator</a></li>-->
            </ul>
        </nav>
    </header>

    <!-- Hero section with call to action -->
    <div class="hero">
        <h2>Calculate Your SGPA and CGPA Easily</h2>
        <p>Our easy-to-use tool helps you calculate your Semester Grade Point Average (SGPA) and Cumulative Grade Point Average (CGPA). Use the options below to perform your calculations.</p>
        <!-- <a href="sgpaCalculator.jsp"><button>Start SGPA Calculation</button></a> -->
    </div>

    <!-- Explanation of the concepts -->
    <div class="content">
        <h2>Understanding SGPA and CGPA</h2>
        <p>SGPA, or Semester Grade Point Average, is the average of grade points obtained in all subjects during a particular semester. It helps in determining academic performance in that semester. CGPA, or Cumulative Grade Point Average, is the overall average of the grade points obtained across all semesters. Both are widely used to measure a student’s performance in their academic career.</p>

        <h2>Example Calculations</h2>
        <p><strong>SGPA Example:</strong> If a student has the following grades and credits:<br>
            Subject 1: Grade = 8, Credits = 3<br>
            Subject 2: Grade = 9, Credits = 4<br>
            Subject 3: Grade = 7, Credits = 3<br>
            The SGPA is calculated as:<br>
            SGPA = (8 * 3 + 9 * 4 + 7 * 3) / (3 + 4 + 3) = 8.1</p>

        <p><strong>CGPA Example:</strong> If the SGPA for 6 semesters are:<br>
            Semester 1 = 8.1, Semester 2 = 8.3, Semester 3 = 7.8, Semester 4 = 8.0, Semester 5 = 8.2, Semester 6 = 8.4<br>
            CGPA = (8.1 + 8.3 + 7.8 + 8.0 + 8.2 + 8.4) / 6 = 8.13</p>
    </div>

    <!-- Footer section -->
    <footer>
        <p>© 2024 SGPA/CGPA Calculator | Designed for Academic Excellence</p>
    </footer>

</body>
</html>
