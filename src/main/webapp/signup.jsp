<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup | Civic Watch</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="sweetalert2.min.css">
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
        }

        .footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px;
        }

        .jumbotron {
            background-color: #00ff73;
            color: black;
            padding: 20px;
        }

        .navbar {
            background-color: #f8f9fa;
        }

        .navbar-light .navbar-nav .nav-link {
            transition: color 0.5s;
        }

        .navbar-light .navbar-nav .nav-link:hover,
        .navbar-light .navbar-nav .nav-link:focus {
            color: #00ff73;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            margin-bottom: 5px;
            display: block; /* Ensure labels are on their own line */
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-primary {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
            display: block; /* Make the button a block element to fill its container */
            width: 200px; /* Fixed width */
            margin: 20px auto; /* Center the button horizontally */
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }

        .container {
            padding: 20px;
        }

        form {
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.html">
                <img src="./assets/images/logo.png" alt="Civic Watch Logo" style="height: 50px;">Civic Watch
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="programs.jsp">Programs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <main>
        <div class="container">
            <div class="jumbotron">
                <h2>Signup for Civic Watch</h2>
                <form action="./addUser" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="fullName">Full Name</label>
                        <input type="text" id="fullName" name="fullName" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" name="phone" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required placeholder="Enter Password">
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required>
                    </div>
                    <div class="form-group">
                        <label for="aadhar">Aadhar Number</label>
                        <input type="text" id="aadhar" name="aadhar" required>
                    </div>
                    <div class="form-group">
                        <label for="presentAddress">Present Address</label>
                        <textarea id="presentAddress" name="presentAddress" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="permanentAddress">Permanent Address</label>
                        <textarea id="permanentAddress" name="permanentAddress" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="uploadImage">Upload Image</label>
                        <input type="file" id="uploadImage" name="uploadImage" >
                    </div>
                    <button type="submit" class="btn btn-primary">SignUp</button>
                </form>
            </div>
        </div>
    </main>
    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <span class="text-muted">&copy; CivicWatch</span>
        </div>
    </footer>
    <script>
    document.querySelector('form').addEventListener('submit', function (e) {
        var fullName = document.getElementById('fullName').value.trim();
        var phone = document.getElementById('phone').value.trim();
        var email = document.getElementById('email').value.trim();
        var password = document.getElementById('password').value.trim();
        var confirmPassword = document.getElementById('confirmPassword').value.trim();
        var aadhar = document.getElementById('aadhar').value.trim();
        var presentAddress = document.getElementById('presentAddress').value.trim();
        var permanentAddress = document.getElementById('permanentAddress').value.trim();

        // Validate full name
        if (fullName === '') {
            alert('Full Name is required.');
            e.preventDefault();
            return;
        }

        // Validate phone number (exactly 10 digits)
        var phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phone)) {
            alert('Please enter a valid 10-digit phone number.');
            e.preventDefault();
            return;
        }

        // Validate email
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert('Please enter a valid email address.');
            e.preventDefault();
            return;
        }

        // Validate password
        if (password === '') {
            alert('Password is required.');
            e.preventDefault();
            return;
        }

        // Validate confirm password
        if (password !== confirmPassword) {
            alert('Passwords do not match.');
            e.preventDefault();
            return;
        }

        // Validate Aadhar number (exactly 12 digits)
        var aadharPattern = /^[0-9]{12}$/;
        if (!aadharPattern.test(aadhar)) {
            alert('Please enter a valid 12-digit Aadhar number.');
            e.preventDefault();
            return;
        }

        // Validate present address
        if (presentAddress === '') {
            alert('Present Address is required.');
            e.preventDefault();
            return;
        }

        // Validate permanent address
        if (permanentAddress === '') {
            alert('Permanent Address is required.');
            e.preventDefault();
            return;
        }

        // If all validations pass, the form will be submitted
    });
</script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
