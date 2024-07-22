
<!DOCTYPE html>
<html lang="en" ng-app="civicWatchApp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaint Lodging - Civic Watch</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="sweetalert2.min.css">
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
        }

        .main {
            flex: 1;
        }

        .footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px;
        }

        .jumbotron {
            background-color: #007bff;
            color: white;
            opacity: 0;
            transform: translateY(-20px);
        }

        .navbar {
            transition: background-color 0.5s;
            background-color: #f8f9fa;
        }

        .navbar-light .navbar-nav .nav-link {
            transition: color 0.3s;
        }

        .navbar-light .navbar-nav .nav-link:hover,
        .navbar-light .navbar-nav .nav-link:focus {
            color: #0056b3;
        }

        .btn-primary {
            transition: background-color 0.4s, transform 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .form-control {
            transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .form-control:focus {
            border-color: #0056b3;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.25);
        }

        .form-group {
            margin-bottom: 1rem;
            animation: slideInUp 0.5s ease forwards;
        }

        @keyframes slideInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        img.logo {
            height: 100px;
            margin-right: 10px;
        }

        .file-input {
            padding-top: 10px;
        }
        
    </style>
</head>
<body ng-controller="MainController as main">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light" ng-controller="LoginController as login">
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
                        <a class="nav-link" href="complain.jsp">Complain Lodging</a>
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
            <h2>Complaint Lodging Form</h2>
            <form action="./instantcomplain" method="post">
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" class="form-control" id="fullName" placeholder="Enter your full name" name="name">
                </div>
                <div class="form-group">
                    <label for="contactNumber">Contact Number</label>
                    <input type="tel" class="form-control" id="contactNumber" placeholder="Enter your contact number" name="contact">
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email">
                </div>
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" class="form-control" id="location" placeholder="Enter your location" name="loc">
                </div>
                <div class="form-group">
                    <label for="pinCode">Pin Code</label>
                    <input type="text" class="form-control" id="pinCode" placeholder="Enter your pin code" name="zip">
                </div>
                <div class="form-group">
                    <label for="complaint">Complaint Details</label>
                    <textarea class="form-control" id="complaint" rows="3" placeholder="Describe your complaint" name="det"></textarea>
                </div>
                
                <button type="submit" class="btn btn-primary">Submit Complaint</button>
            </form>
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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script>
        angular.module('civicWatchApp', [])
        .controller('MainController', function() {
            var vm = this;
            vm.message = "Enhancing community safety through effective communication.";
        });
    </script>
</body>
</html>


