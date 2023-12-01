<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
		.radio-group {
            display: inline-block;
        }

        /* Hide the actual radio buttons */
        .radio-group input[type="radio"] {
            display: none;
        }

        /* Style the label as a button */
        .radio-group label {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ccc;
            cursor: pointer;
        }

        /* Style the label when it's checked */
        .radio-group input[type="radio"]:checked + label {
            background-color: #007bff;
            color: #fff;
        }
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #379683;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: flex;
            align-items: center;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .icon {
            margin-right: 10px;
        }

        .gender-label {
            font-weight: bold;
        }

        .gender-options {
            display: flex;
            align-items: center;
        }

        .gender-options div {
            margin-right: 20px;
        }

        button[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body style="background-color: #5CDB95;" >
    <div class="container">
        <h2>Register Here</h2>
       <form th:action="@{/register}" method="post" th:object="${user}">
            <div class="form-group">
                <label for="firstname">
                    <span class="icon"><i class="fas fa-user"></i></span>
                    First Name
                </label>
                <input type="text" id="firstname" name="firstname" th:field="*{firstname}" required>
            </div>

            <div class="form-group">
                <label for="lastname">
                    <span class="icon"><i class="fas fa-user"></i></span>
                    Last Name
                </label>
                 <input type="text" id="lastname" name="lastname" th:field="*{lastname}" required>
            </div>

            <div class="form-group">
                <label for="gmail">
                    <span class="icon"><i class="fas fa-envelope"></i></span>
                    Gmail
                </label>
                 <input type="email" id="gmail" name="gmail" th:field="*{gmail}" required>
            </div>

            <div class="form-group">
                <label for="password">
                    <span class="icon"><i class="fas fa-lock"></i></span>
                    Password
                </label>
                <input type="password" id="password" name="password" th:field="*{password}" required>
            </div>

            <div class="form-group">
                Gender:
                <div class="radio-group">
        <input type="radio" id="male" name="gender" value="male" th:field="*{gender}">
        <label for="male">Male</label>
    </div>
    <div class="radio-group">
        <input type="radio" id="female" name="gender" value="female" th:field="*{gender}">
        <label for="female">Female</label>
    </div>
            </div>

            <button type="submit">Register</button>
            <a class="nav-link active" aria-current="page" href="/"><p class="text-blue " >login here </p></a>
        </form>
    </div>
</body>
</html>
