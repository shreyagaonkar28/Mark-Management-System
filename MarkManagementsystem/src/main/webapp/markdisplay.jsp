<%@ page import="java.util.*,com.model.StudentMark,com.dao.MarkDAO"%>
<html>
<head>
    <title>All Student Marks</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #2D99AE, #ffffff);
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2D99AE;
            margin-bottom: 25px;
            font-size: 28px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 25px;
        }

        th {
            background: #2D99AE;
            color: white;
            padding: 15px;
            font-weight: 600;
            text-transform: uppercase;
        }

        td {
            padding: 12px 15px;
            border-bottom: 1px solid #eee;
            color: #333;
        }

        tr:hover {
            background: #f0fcfd;
        }

        .back-btn {
            display: block;
            width: 200px;
            margin: 0 auto;
            background: #2D99AE;
            color: white;
            padding: 12px;
            text-decoration: none;
            border-radius: 8px;
            text-align: center;
            font-weight: 600;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .back-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(45, 153, 174, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Marks List</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Subject</th>
                <th>Marks</th>
                <th>Date</th>
            </tr>
            <%
            MarkDAO dao = new MarkDAO();
            List<StudentMark> list = dao.getAllMarks();
            for(StudentMark mark : list){
            %>
            <tr>
                <td><%=mark.getStudentID()%></td>
                <td><%=mark.getStudentName()%></td>
                <td><%=mark.getSubject()%></td>
                <td><%=mark.getMarks()%></td>
                <td><%=mark.getExamDate()%></td>
            </tr>
            <% } %>
        </table>
        <a href="index.jsp" class="back-btn">Back to Home</a>
    </div>
</body>
</html>
