<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Civic Watch: Enhancing Community Safety</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            transition: transform 0.5s, opacity 0.5s;
            opacity: 0;
            transform: translateY(-20px);
        }

        .navbar {
            transition: background-color 0.5s;
            background-color: #f8f9fa;
        }

        .navbar-light .navbar-nav .nav-link {
            transition: color 0.5s;
        }

        .navbar-light .navbar-nav .nav-link:hover,
        .navbar-light .navbar-nav .nav-link:focus {
            color: #00ff73;
        }

        .btn-lg, .auth-button {
            transition: background-color 0.8s, transform 0.3s;
        }

        .btn-lg:hover, .auth-button:hover {
            background-color: red;
            transform: scale(1.05);
        }

        .rounded-circle {
            border-radius: 50%;
            width: 30px;
            height: 30px;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (prefers-reduced-motion: no-preference) {
            .jumbotron, .navbar, .btn-lg {
                animation: fadeInUp 0.5s ease-out forwards;
            }
        }

        img.logo {
            height: 100px;
            margin-right: 10px;
        }

        .auth-button {
            margin-top: 20px;
        }

        .jumbotron img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.jsp">
                <img src="./assets/images/logo.png" alt="Civic Watch Logo" class="logo">Civic Watch
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="complain.jsp">Instant Complain</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="publicutlityarea.jsp">Nearest Public Utility area</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="programs.jsp">Programs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contactus.jsp">Contact Us</a>
                    </li>
                </ul>
                
            </div>
        </nav>
    </header>
    <main>
        <div class="container mt-4">
            <div class="jumbotron">
                <img src="./assets/images/img3.webp" alt="Community Safety Image">
                <h1 class="display-4">Welcome to Civic Watch!</h1>
                <p class="lead">Enhancing community safety through effective communication between the public and law enforcement.</p>
                <hr class="my-4">
                <p>Access your dashboard to report incidents, and get real-time updates.</p>
                <div>
                    <a href="login.jsp" class="btn btn-primary auth-button">Login</a>
                    <a href="signup.jsp" class="btn btn-primary auth-button">Signup</a>
                </div>
            </div>
        </div>
    </main>
    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <span class="text-muted">&copy; CivicWatch</span>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>
