<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solved FIRs - Civic Watch</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
    </style>
</head>
<body>
    <header class="header">
        <h1>Solved FIRs</h1>
    </header>
    <div class="container firs-container">
    <%
	    	try{
	    		Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
	            String q="SELECT fd.* from fir fd join fir_status fs ON fd.firno=fs.fir_id where fs.status ='Solved'";
	            PreparedStatement ps = con.prepareStatement(q);
	           
	            ResultSet res=ps.executeQuery();
	            while(res.next()){
    		%>
    		<div class="fir">
            <div class="fir-heading"><%=res.getString(1) %></div>
            <p><strong>Complainant:</strong> <%=res.getString(6) %></p>
            <p><strong>Contact:</strong> <%=res.getString(15) %></p>
            <p><strong>Date/Time of Incident:</strong> <%=res.getString(4) %> <%=res.getString(5) %></p>
            <p><strong>Description:</strong> <%= res.getString(14) %></p>
            <p><strong>Status:</strong> Solved</p>
            <form action="./Solved" method="post">
            <div class="action-buttons">
                <button class="btn btn-success btn-sm"  type="submit">Mark as UnSolved</button>
            </div>
            </form>
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
</body>
</html>
