<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>First Information Report (FIR)</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .form-section {
            margin-bottom: 20px;
        }
        .form-section h2 {
            border-bottom: 1px solid #000;
            padding-bottom: 5px;
        }
        .form-group {
            margin-bottom: 10px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group textarea {
            resize: vertical;
        }
    </style>
</head>
<body>


    <div class="container">
    <button type="button" class="btn btn-secondary">Download Fir</button>
    

    <div class="form-section">
    <h1>First Information Report (Under Section 154 Cr.P.C)</h1>
        <h2>1. Basic Information</h2>
        <div class="form-group">
            <label for="district">District:</label>
        <%
        	
    	try{
    		HttpSession ses=request.getSession(false);        
            String firid=(String)ses.getAttribute("firid");
        	System.out.println(firid);
    		Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            PreparedStatement ps = con.prepareStatement("select * from fir where firid=?");
            ps.setString(1,firid);
            ResultSet res=ps.executeQuery();
            System.out.println(res.getString(3));
            if(res.next()){
        %>
        
            <input type="text" id="district" name="district" value="<%=res.getString(2)%>">
        </div>
        <div class="form-group">
            <label for="police_station">Police Station:</label>
            <input type="text" id="police_station" name="police_station">
        </div>
        <div class="form-group">
            <label for="year">Date:</label>
            <input type="text" id="year" name="year" value="">
        </div>
        <div class="form-group">
            <label for="fir_no">F.I.R. No.:</label>
            <input type="text" id="fir_no" name="fir_no" value="">
        </div>
        
    </div>

    
    <div class="form-section">
        <h2>3. Occurrence of Offence</h2>
        <div class="form-group">
            <label for="day">Day:</label>
            <input type="text" id="day" name="day" value="">
        </div>
        <div class="form-group">
            <label for="occurrence_date">Date:</label>
            <input type="text" id="occurrence_date" name="occurrence_date" value="">
        </div>
        <div class="form-group">
            <label for="occurrence_time">Time:</label>
            <input type="text" id="occurrence_time" name="occurrence_time" value="">
        </div>
    </div>

    

    <div class="form-section">
        <h2>4. Type of Information</h2>
        <div class="form-group">
            <label for="info_type">Type:</label>
            <input type="text" id="info_type" name="info_type" placeholder="Written / Oral" value="Written">
        </div>
    </div>

    

    <div class="form-section">
        <h2>5. Complainant / Informant</h2>
        <div class="form-group">
            <label for="complainant_name">Name:</label>
            <input type="text" id="complainant_name" name="complainant_name" value="">
        </div>
        <div class="form-group">
            <label for="complainant_father_husband_name">Father’s:</label>
            <input type="text" id="complainant_father_husband_name" name="complainant_father_husband_name" value="">
        </div>
        
        <div class="form-group">
            <label for="complainant_nationality">Nationality:</label>
            <input type="text" id="complainant_nationality" name="complainant_nationality" value="">
        </div>
        <div class="form-group">
            <label for="complainant_passport">Aadhar No.:</label>
            <input type="text" id="complainant_passport" name="complainant_passport" value="">
        </div>
        
        <div class="form-group">
            <label for="passport_issue_place">Mobile</label>
            <input type="text" id="passport_issue_place" name="passport_issue_place" value="">
        </div>
        <div class="form-group">
            <label for="complainant_occupation">Occupation:</label>
            <input type="text" id="complainant_occupation" name="complainant_occupation" value="">
        </div>
        <div class="form-group">
            <label for="complainant_address">Address:</label>
            <textarea id="complainant_address" name="complainant_address" rows="3" value=""></textarea>
        </div>
    </div>

    <div class="form-section">
        <h2>6. Details of Incident</h2>
        <div class="form-group">
            <label for="accused_details">Details of incident with full particulars:</label>
            <textarea id="accused_details" name="accused_details" rows="3" value=""></textarea>
        </div>
    </div>
<%
  	
        }
	}catch(Exception e){
		
	}
%>
    
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
