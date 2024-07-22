<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New FIRs - Civic Watch</title>
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

        .firs-container {
            padding: 20px;
            margin-top: 20px;
        }

        .fir {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .fir-heading {
            font-weight: bold;
        }

        .action-buttons {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1>New FIRs</h1>
    </header>
    <div class="container firs-container">
        <!-- Example FIR -->
        
        <%
        	try{
        		Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
                PreparedStatement ps = con.prepareStatement("select * from fir");
                ResultSet res=ps.executeQuery();
                
                while(res.next()){
                	String firid=res.getString(1);
                    request.setAttribute("solvid",firid);
           %>
           		<div class="fir">
            <div class="fir-heading"><%=res.getString(1) %></div>
            <p><strong>Complainant:</strong><%=res.getString(6) %></p>
            <p><strong>Contact:</strong> <%=res.getString(15) %></p>
            <p><strong>Date/Time of Incident:</strong> <%=res.getString(4) %> <%=res.getString(5) %></p>
            <p><strong>Description:</strong> <%=res.getString(14) %></p>
            <p><strong>Status:</strong> New</p>
            <div class="action-buttons">
                <form action="./ongoing" method="post">
                <button class="btn btn-success btn-sm" onclick="markAsSolved(12345)">Mark as Solved</button>
            	</form>
            </div>
        </div>
        <!-- Additional FIRs would be listed here -->
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
        
    </script>
</body>
</html>
