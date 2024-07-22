
<!DOCTYPE html>
<html lang="en" ng-app="civicWatchApp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programs | Civic Watch</title>
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
            opacity: 1; /* Make sure opacity is set to 1 for visibility */
            transform: translateY(0); /* Adjust transform to 0 */
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

        .btn-lg, .auth-button, .program-button {
            transition: background-color 0.8s, transform 0.3s;
        }

        .btn-lg:hover, .auth-button:hover, .program-button:hover {
            background-color: red;
            transform: scale(1.05);
        }

        .rounded-circle {
            border-radius: 50%;
            width: 30px;
            height: 30px;
        }

        .program-item {
            background-color: #ffffff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        img.logo {
            height: 100px;
            margin-right: 10px;
        }

        .auth-button {
            margin-top: 20px;
        }

        .carousel-inner img {
            width: 100%;
            height: 400px; /* Fixed height for all images */
            object-fit: cover; /* Ensures the images cover the area without distorting aspect ratio */
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: black; /* Change icon color to black */
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            filter: invert(1); /* Makes the arrows white */
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
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="complain.jsp">Instant Complain</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="publicutlityarea.jsp">Nearest Public Utility area</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="programs.jsp">Programs <span class="sr-only">(current)</span></a>
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
                <!-- Carousel -->
                <div id="programsCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./assets/images/img1Pro.webp" alt="Image 1">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/images/img2pro.webp" alt="Image 2">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/images/img3pro.webp" alt="Image 3">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/images/img4pro.webp" alt="Image 4">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#programsCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#programsCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!-- End of Carousel -->
                <h1 class="display-4">Community Programs</h1>
                <p class="lead">Explore our range of programs aimed at improving community safety and engagement.</p>
            </div>
            <div class="program-item">
                <h4>Neighborhood Watch</h4>
                <p>Participate in our neighborhood watch program to improve safety in your local area.</p>
            </div>
            <div class="program-item">
                <h4>Youth Outreach</h4>
                <p>Join our workshops designed to educate young people on safety, technology, and civic responsibility.</p>
            </div>
            <div class="program-item">
                <h4>Elderly Assistance</h4>
                <p>Contribute to our initiative to assist elderly residents with daily safety checks and emergency alert systems.</p>
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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script>
        angular.module('civicWatchApp', [])
        .controller('MainController', function() {
            var vm = this;
            vm.message = "Enhancing community safety through effective communication.";
        })
        .controller('LoginController', function() {
            var vm = this;
            vm.isLoggedIn = true; // This would dynamically change based on your auth logic
            vm.userImage = 'path/to/userImage.jpg'; // User image path, dynamically set after login
        });
    </script>
</body>
</html>
