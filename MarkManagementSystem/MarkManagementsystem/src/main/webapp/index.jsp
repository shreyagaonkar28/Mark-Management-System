<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Marks Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #2D99AE;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            text-align: center;
            color: white;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 40px;
            font-weight: bold;
        }

        .nav {
            display: grid;
            grid-template-columns: repeat(2, 200px);
            gap: 20px;
            justify-content: center;
        }

        .nav a {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 14px 0;
            background-color: white;
            color: #2D99AE;
            font-weight: bold;
            text-decoration: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            transition: 0.3s ease;
        }

        .nav a:hover {
            background-color: #e0f7fa;
            transform: translateY(-2px);
        }

        .nav a:active {
            transform: scale(0.98);
        }

        .nav .full-width {
            grid-column: span 2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Marks Management System</h1>
        <div class="nav">
            <a href="markadd.jsp">Add Mark</a>
            <a href="markupdate.jsp">Update Mark</a>
            <a href="markdelete.jsp">Delete Mark</a>
            <a href="markdisplay.jsp">Display Marks</a>
            <a href="report_form.jsp" class="full-width">Reports</a>
        </div>
    </div>
</body>
</html>
