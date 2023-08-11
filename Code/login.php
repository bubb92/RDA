<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login to Your Account</title>
   
    <style>
        body {
            font-family: sans-serif;
            background-color: #1F4D91;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            min-width: 350px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .form-group {
            margin-bottom: 15px;
            width: 290px;
            margin-right: 20px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="email"], input[type="password"] {
            width: 98%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #005bb5;
            color: #fff;
            width: 105%;
            padding: 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 14px;
        }
        button:hover {
            background-color: #004499;
        }
        .remember-me {
            display: flex;
            align-items: left;
            margin-top: 10px;
            font-size: 14px;
        }
        .login-link {
            margin-top: 8px; /* Reduced top margin */
            font-size: 12px;
        }
        .login-heading {
            font-size: 22px; /* Reduced font size for heading */
            margin-bottom: 35px; /* Adjust margin */
            font-weight: lighter; /* Lighter font weight */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="login-heading">Login to your account</h2>
        <form action="code.php" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group remember-me">
                <label>
                    <input type="checkbox" id="remember" name="remember">
                    Remember Me
                </label>
            </div>
            <div class="form-group">
                <button type="submit"  name="loginbtn">Login</button>
            </div>
        </form>
        <div class="login-link">
            New to MyApp? <a href="index.php">Sign Up</a>
        </div>
    </div>
</body>
</html>