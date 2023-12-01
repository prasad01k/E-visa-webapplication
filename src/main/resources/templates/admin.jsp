<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Login</title>
    <style>
        body {
            background-color: #5CBD95;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-card {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
        }

        .login-card h2 {
            text-align: center;
            color: #333;
        }

        .login-form {
            text-align: left;
            margin: 10px;
        }

        .login-form input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-form input[type="submit"] {
            background-color: #5CBD95;
            color: #fff;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <h2>Admin Login</h2>
        <form class="login-form" action="displayData" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
