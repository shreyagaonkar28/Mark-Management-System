<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>Update Mark</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #2D99AE, #ffffff);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .container {
            background: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 420px;
            text-align: center;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }

        h2 {
            color: #2D99AE;
            font-size: 26px;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            color: #2D99AE;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 14px;
        }

        input[type="text"] {
            width: 100%;
            padding: 14px;
            border: 2px solid #2D99AE;
            border-radius: 10px;
            font-size: 16px;
            transition: all 0.3s ease;
            background: #ffffff;
        }

        input[type="text"]:focus {
            outline: none;
            background: #f2fefe;
            box-shadow: 0 0 8px rgba(45, 153, 174, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            background: #2D99AE;
            color: white;
            padding: 15px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(45, 153, 174, 0.3);
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #2D99AE;
            text-decoration: none;
            font-weight: 600;
            padding: 10px;
            border-radius: 8px;
            background: #e7f9fb;
            border: 1px solid #2D99AE;
            transition: all 0.2s ease;
        }

        .back-link:hover {
            background: #d4f3f9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>📝 Update Student Marks</h2>
        <form action="UpdateMarkServlet" method="post">
            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="text" id="studentId" name="studentId" required>
            </div>

            <div class="form-group">
                <label for="marks">New Marks:</label>
                <input type="text" id="marks" name="marks" required>
            </div>

            <input type="submit" value="Update Marks">
        </form>
        <a href="index.jsp" class="back-link">← Back to Home</a>
    </div>
</body>
</html>
