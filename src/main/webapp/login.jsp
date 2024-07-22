<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Civic Watch</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
            justify-content: center; /* Aligns content center vertically */
            align-items: center; /* Aligns content center horizontally */
        }

        .header, .footer {
            width: 100%;
            text-align: center;
            background-color: #007bff;
            color: white;
            padding: 10px;
        }

        .login-container {
            width: 100%;
            max-width: 330px;
            margin: auto;
        }

        .login-button {
            width: 100%;
            margin-bottom: 10px; /* Space between buttons */
        }

        img.logo {
            height: 150px;
             /* Space below the logo */
        }
    </style>
</head>
<body>
    <header class="header">
        <img src="./assets/images/logo.png" alt="Civic Watch Logo" class="logo">
    </header>
    <div class="login-container">
        <a href="email_login.jsp" class="btn btn-primary login-button">Login with Email</a>
        <a href="phone_login.jsp" class="btn btn-secondary login-button">Login As Admin</a>
    </div>
    <footer class="footer">
        <span class="text-muted">&copy; CivicWatch</span>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
