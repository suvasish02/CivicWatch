
<!DOCTYPE html>
<html lang="en" ng-app="civicWatchApp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Civic Watch: Nearest Police Stations</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://api.mapbox.com/mapbox-gl-js/v2.6.1/mapbox-gl.css" rel="stylesheet">
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

        #map {
            width: 100%;
            height: 500px; /* Adjust height as necessary */
        }

        .map-header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
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
                        <a class="nav-link" href="publicutilityarea.jsp">Nearest Public Utility Areas</a>
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
            <div class="map-header">Find your nearest public utility areas (Police Stations, Hospitals, Fire Stations)</div>
            <div id="map"></div> <!-- Container for Mapbox map -->
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
    <script src="https://api.mapbox.com/mapbox-gl-js/v2.6.1/mapbox-gl.js"></script>
    <script>
        angular.module('civicWatchApp', [])
        .controller('MainController', function() {
            // Main controller logic
        })
        .controller('LoginController', function() {
            var vm = this;
            vm.isLoggedIn = true; // This would dynamically change based on your auth logic
            vm.userImage = 'path/to/userImage.jpg'; // User image path, dynamically set after login
        });

        mapboxgl.accessToken = 'pk.eyJ1IjoicHJhYmh1aml0NjMwMyIsImEiOiJjbHZ2dGJueGUxcDhmMmlvZHBicmhzZWp5In0.M5ozlrlBkbQ3KhM1HLrz2A';
        var map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v11', // Style URL
            center: [-96, 37.8], // Starting position [lng, lat]
            zoom: 9 // Starting zoom level
        });

        // Example: Add a marker for a police station
        new mapboxgl.Marker()
            .setLngLat([-96, 37.8])
            .addTo(map);

        // You can add more markers or use a feature like Mapbox Geocoding to find nearby police stations
    </script>
</body>
</html>
