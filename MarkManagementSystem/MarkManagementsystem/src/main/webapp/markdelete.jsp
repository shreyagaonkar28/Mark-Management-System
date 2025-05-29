<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Mark</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #2D99AE, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
            width: 420px;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        h2 {
            text-align: center;
            color: #2D99AE;
            font-size: 26px;
            margin-bottom: 25px;
            font-weight: 600;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            color: #2D99AE;
            font-size: 15px;
            margin-bottom: 6px;
            font-weight: 500;
        }

        input[type="text"] {
            padding: 14px;
            margin-bottom: 20px;
            border: 2px solid #2D99AE;
            border-radius: 10px;
            font-size: 16px;
            background: #ffffff;
            color: #333;
            transition: all 0.3s ease;
        }

        input[type="text"]::placeholder {
            color: #aaa;
        }

        input[type="text"]:focus {
            outline: none;
            background: #f2fefe;
            box-shadow: 0 0 8px rgba(45, 153, 174, 0.3);
        }

        input[type="submit"] {
            padding: 14px;
            background: #2D99AE;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(45, 153, 174, 0.3);
        }

        input[type="submit"]:active {
            transform: scale(0.98);
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #2D99AE;
            font-weight: 600;
            text-decoration: none;
            padding: 10px;
            border-radius: 10px;
            background: #e7f9fb;
            border: 1px solid #2D99AE;
            transition: all 0.2s ease;
        }

        a:hover {
            background: #d4f3f9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>🗑️ Delete Student Record</h2>
        <form action="DeleteMarkServlet" method="post">
            <label for="studentId">Student ID</label>
            <input type="text" id="studentId" name="studentId" placeholder="Enter Student ID" required>
            <input type="submit" value="Delete">
        </form>
        <a href="index.jsp">← Back to Home</a>
    </div>
</body>
</html>
