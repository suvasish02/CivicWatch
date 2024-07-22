<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Login - Civic Watch</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="sweetalert2.min.css">
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
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Adds subtle shadow around the form */
            background-color: white; /* White background for the form area */
        }

        .form-group {
            margin-bottom: 15px; /* Space between form groups */
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-primary {
            display: block; /* Make the button a block element to fill its container */
            width: 200px; /* Fixed width */
            margin: 20px auto 0; /* Center the button horizontally, with margin top */
        }

        img.logo {
            height: 80px;
            margin-bottom: 20px; /* Space below the logo */
        }
    </style>
</head>
<body>
    <header class="header">
        <img src="logo.png" alt="Civic Watch Logo" class="logo" href="index.html"> <!-- Ensure the image path is accessible -->
    </header>
    <div class="login-container">
        <h2>Login with Email</h2>
        <form action="./forgotpassword" method="POST"> <!-- Specify the action URL -->
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" id="email" name="email" required>
            </div>          
            <button type="submit" class="btn btn-primary">Get Password</button>
        </form>
    </div>
    <footer class="footer">
        <span class="text-muted">Place your footer text here.</span>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
