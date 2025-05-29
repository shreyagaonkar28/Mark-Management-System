<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Mark</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #2D99AE, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 20px;
            padding: 40px;
            width: 420px;
            box-shadow: 0 4px 25px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2D99AE;
            font-size: 26px;
        }

        input {
            width: 100%;
            padding: 14px;
            margin-bottom: 18px;
            border: 2px solid #2D99AE;
            border-radius: 10px;
            font-size: 16px;
            background: #ffffff;
            transition: all 0.3s ease;
        }

        input:focus {
            outline: none;
            background: #f2fefe;
            box-shadow: 0 0 8px rgba(45, 153, 174, 0.3);
        }

        input[type="submit"] {
            background-color: #2D99AE;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border: none;
            transition: transform 0.2s ease, box-shadow 0.3s ease;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(45, 153, 174, 0.3);
        }

        input[type="submit"]:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Student Mark</h2>
        <form action="addMark" method="post">
            <input type="text" name="studentID" placeholder="Student ID" required>
            <input type="text" name="studentName" placeholder="Student Name" required>
            <input type="text" name="subject" placeholder="Subject" required>
            <input type="number" name="marks" placeholder="Marks" required>
            <input type="date" name="examDate" required>
            <input type="submit" value="Add Mark">
        </form>
    </div>
</body>
</html>
