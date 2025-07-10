# 🎓 SGPA/CGPA Calculator (Java + JSP)

A web-based academic calculator built using **JSP (Java Server Pages)** to compute **SGPA (Semester Grade Point Average)** and **CGPA (Cumulative Grade Point Average)**. Includes interactive **bar charts** for grade visualization, dynamic forms, and responsive design – perfect for students and educational institutions.

---

## 🌟 Features

- 📘 SGPA calculation based on subject name, grade, and credits  
- 📗 CGPA calculation across multiple semesters  
- 📊 **Bar chart visualization** using Chart.js  
- ✍️ Dynamic form generation based on user input  
- ✅ Input validation (grade ranges, credit limits, etc.)  
- 💻 Clean, mobile-friendly user interface using CSS and Google Fonts  

---

## 🛠️ Tech Stack

- **Frontend**: HTML, CSS, Chart.js, JavaScript  
- **Backend**: Java + JSP (Java Server Pages)  
- **Server**: Apache Tomcat (v8.5 or above recommended)

---

## 📚 Calculation Formulas

**SGPA** = (Σ Credit × Grade Point) / Σ Total Credits  
**CGPA** = (Σ SGPA × Credit) / Σ Total Credits

---

## 📌 Grade Mapping

| Grade | Grade Point |
|-------|-------------|
| A+    | 10          |
| A     | 9           |
| B+    | 8           |
| B     | 7           |
| C     | 6           |
| D     | 5           |
| F     | 0           |

---

## 📁 Project Structure

sgpa-cgpa-calculator/
├── index.jsp # Homepage
├── sgpa.jsp # Ask number of subjects
├── sgpasubjectForm.jsp # Generate subject input form
├── sgpadashboard.jsp # SGPA result page with bar chart
├── cgpa.jsp # Ask number of semesters
├── cgpasubjectForm.jsp # Generate semester input form
├── cgpadashboard.jsp # CGPA result page with bar chart
├── style.css # Global and landing styles
├── calc.css # Input forms styling
├── dashboard.css # Bar chart & result styling
└── README.md # This file


---

## 📊 Visualization

- SGPA and CGPA results are shown using **bar charts** via [Chart.js](https://www.chartjs.org/)
- Bar chart reflects semester-wise or subject-wise grade distribution
- Chart is animated and color-coded for clarity

---

## 🚀 How to Run This Project

### 🔧 Prerequisites

- [Java JDK](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) (8 or higher)
- [Apache Tomcat](https://tomcat.apache.org/) (v8.5+)
- Any web browser (Chrome, Firefox, Edge)

### ▶️ Running Steps

1. **Download and Install Tomcat**
   - Extract to any folder (e.g., `C:/tomcat`)

2. **Place the Project Folder**
   - Copy `sgpa-cgpa-calculator` folder into:
     ```
     <TOMCAT_HOME>/webapps/
     ```

3. **Start the Server**
   - Navigate to `bin/` folder inside Tomcat and run:
     - On Windows: `startup.bat`
     - On macOS/Linux: `./startup.sh`

4. **Open in Browser**
http://localhost:8080/sgpa-cgpa-calculator/

>Built  using JSP, Java, HTML, CSS, and Chart.js  
> For students, by students.
