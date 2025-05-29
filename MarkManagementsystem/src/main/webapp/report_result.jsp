<%@ page import="java.util.List" %>
<%@ page import="com.model.StudentMark" %>
<html>
<head>
    <title>Report Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #2D99AE, #ffffff);
            padding: 40px;
            color: #2D99AE;
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
            color: #2D99AE;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 90%;
            max-width: 900px;
            background: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 12px 20px;
            border-bottom: 1px solid #e0f2f4;
            text-align: left;
            color: #2D99AE;
        }
        th {
            background-color: #2D99AE;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        tr:hover {
            background-color: #f0fbfc;
        }
        tr:last-child td {
            border-bottom: none;
        }
        a {
            display: inline-block;
            margin-top: 25px;
            padding: 10px 20px;
            background-color: #2D99AE;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 6px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #257f92;
        }
    </style>
</head>
<body>
    <h2>Report Result</h2>

    <p>Showing report for subject containing: "<strong><%= request.getAttribute("subject") %></strong>",
    Marks between <strong><%= request.getAttribute("minMarks") %></strong> and <strong><%= request.getAttribute("maxMarks") %></strong>.</p>

    <table>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Subject</th>
            <th>Marks</th>
            <th>Exam Date</th>
        </tr>
        <%
            List<StudentMark> reportList = (List<StudentMark>) request.getAttribute("reportList");
            if (reportList != null && !reportList.isEmpty()) {
                for (StudentMark mark : reportList) {
        %>
        <tr>
            <td><%= mark.getStudentID() %></td>
            <td><%= mark.getStudentName() %></td>
            <td><%= mark.getSubject() %></td>
            <td><%= mark.getMarks() %></td>
            <td><%= mark.getExamDate() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" style="text-align:center;">No records found for the given criteria.</td>
        </tr>
        <%
            }
        %>
    </table>

    <a href="report_form.jsp">Back to Report Form</a>
</body>
</html>
