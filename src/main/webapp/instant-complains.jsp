
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instant Complains - Civic Watch</title>
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

        .complains-container {
            padding: 20px;
            margin-top: 20px;
        }

        .complain {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .complain-heading {
            font-weight: bold;
        }
    </style>
</head>
<body>
<header class="header">
        <h1>Instant Complains</h1>
    </header>
<%
	    	try{
	    		Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
	            String q="SELECT * from instant";
	            PreparedStatement ps = con.prepareStatement(q);
	           
	            ResultSet res=ps.executeQuery();
	            while(res.next()){
    		%>
    
    <div class="container complains-container">
        <!-- Example complain -->
        <div class="complain">
            <div class="complain-heading">Complaint by <%=res.getString(1) %></div>
            <p><strong>Contact:</strong> <%=res.getString(2) %></p>
            <p><strong>Email:</strong> <%=res.getString(3) %></p>
            <p><strong>Location:</strong> <%=res.getString(4) %></p>
            <p><strong>Description:</strong> <%=res.getString(6) %></p>
        </div>
        <!-- Additional complains would be listed here -->
        <%
                }
        	}catch(Exception e){
        		e.printStackTrace();
        	}
        %>
        
    </div>
    <footer class="footer">
        <span class="text-muted">© 2024 Civic Watch</span>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Example function to dynamically load complaints data
        function loadComplaints() {
            // Placeholder: Replace with AJAX call to fetch data from your server
            console.log('Loading complaints data...');
        }

        // Call loadComplaints when the page loads
        window.onload = loadComplaints;
    </script>
</body>
</html>
