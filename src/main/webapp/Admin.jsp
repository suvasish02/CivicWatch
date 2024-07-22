
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Civic Watch</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
        }

        .header, .footer {
            background-color: #ff0019;
            color: rgb(13, 1, 1);
            text-align: center;
            padding: 10px;
        }

        .dashboard-container {
            padding: 20px;
        }

        .dashboard-section {
            margin-top: 20px;
        }

        .btn-space {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1>Admin Dashboard</h1>
    </header>
    <div class="dashboard-container container">
        <div class="dashboard-section">
            <h2>New FIRs</h2>
            <a href="new-fir.jsp" class="btn btn-primary btn-space">Show New FIRs</a>
        </div>
        <div class="dashboard-section">
            <h2>Ongoing FIRs</h2>
            <a href="ongoing-firs.jsp" class="btn btn-primary btn-space">Show Ongoing FIRs</a>
        </div>
        <div class="dashboard-section">
            <h2>Solved FIRs</h2>
            <a href="solved-firs.jsp" class="btn btn-primary btn-space">Show Solved FIRs</a>
        </div>
        <div class="dashboard-section">
            <h2>Instant Complains</h2>
            <a href="instant-complains.jsp" class="btn btn-primary btn-space">View Instant Complains</a>
        </div>
    </div>
    <footer class="footer">
        <span class="text-muted" color>© 2024 Civic Watch</span>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
