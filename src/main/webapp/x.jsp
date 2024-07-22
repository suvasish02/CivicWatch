<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
			<button type="button" class="btn btn-secondary" id="download">Download FIR</button>
		</div>
        <div class="container" id="fir_c">
        
        
        <div class="form-section"  >
            <h1>First Information Report (Under Section 154 Cr.P.C)</h1>
            <h2>1. Basic Information</h2>
            <div class="form-group">
                <label for="district">District:</label>
                <%
                    try {
                        HttpSession ses = request.getSession(false);        
                        String firid = (String)ses.getAttribute("firid");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
                        PreparedStatement ps = con.prepareStatement("select * from fir where firno=?");
                        ps.setString(1, firid);
                        ResultSet res = ps.executeQuery();
                        if (res.next()) {
                %>
                <input type="text" id="district" name="district" value="<%=res.getString("district")%>">
            </div>
            <div class="form-group">
                <label for="police_station">Police Station:</label>
                <input type="text" id="police_station" name="police_station" value="<%=res.getString("police_station")%>">
            </div>
            
         <div class="form-group">
                <label for="fir_no">F.I.R. No.:</label>
                <input type="text" id="fir_no" name="fir_no" value="<%=res.getString("firno")%>">
            </div>
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" value="<%=res.getString("date_of_occur")%>">
            </div>
        </div>

        <div class="form-section">
            <h2>3. Occurrence of Offence</h2>
            
            <div class="form-group">
                <label for="occurrence_date">Date:</label>
                <input type="date" id="occurrence_date" name="occurrence_date" value="<%=res.getString("date_of_occur")%>">
            </div>
            <div class="form-group">
                <label for="occurrence_time">Time:</label>
                <input type="time" id="occurrence_time" name="occurrence_time" value="<%=res.getString("time_of_occur")%>">
            </div>
        </div>

        <div class="form-section">
            <h2>4. Type of Information</h2>
            <div class="form-group">
                <label for="info_type">Type:</label>
                <input type="text" id="info_type" name="info_type" placeholder="Written / Oral" value="<%="Written"%>">
            </div>
        </div>

        <div class="form-section">
            <h2>5. Complainant / Informant</h2>
            <div class="form-group">
                <label for="complainant_name">Name:</label>
                <input type="text" id="complainant_name" name="complainant_name" value="<%=res.getString("informant_name")%>">
            </div>
            <div class="form-group">
                <label for="complainant_father_husband_name">Father Name:</label>
                <input type="text" id="complainant_father_husband_name" name="complainant_father_husband_name" value="<%=res.getString("informant_father_name")%>">
            </div>
            <div class="form-group">
                <label for="complainant_nationality">Nationality:</label>
                <input type="text" id="complainant_nationality" name="complainant_nationality" value="<%=res.getString("informant_nationality")%>">
            </div>
         <div class="form-group">
                <label for="complainant_passport">Aadhar No.:</label>
                <input type="text" id="complainant_passport" name="complainant_passport" value="<%=res.getString("informant_aadhar")%>">
            </div>
            <div class="form-group">
                <label for="passport_issue_place">Mobile:</label>
                <input type="text" id="passport_issue_place" name="passport_issue_place" value="<%=res.getString("informant_mobile_number")%>">
            </div>
            <div class="form-group">
                <label for="complainant_occupation">Occupation:</label>
                <input type="text" id="complainant_occupation" name="complainant_occupation" value="<%=res.getString("informant_occupation")%>">
            </div>
            <div class="form-group">
                <label for="complainant_address">Address:</label>
                <textarea id="complainant_address" name="complainant_address" rows="3"><%=res.getString("informant_address")%></textarea>
            </div>
        </div>

        <div class="form-section">
            <h2>6. Details of Incident</h2>
            <div class="form-group">
                <label for="accused_details">Details of incident with full particulars:</label>
                <textarea id="accused_details" name="accused_details" rows="3"><%=res.getString("detail_of_crime")%></textarea>
            </div>
        </div>
        <%
                }
                con.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
    
    <script type="text/javascript">
    window.onload = function () {
        document.getElementById("download")
            .addEventListener("click", () => {
                const fir = this.document.getElementById("fir_c");
                console.log(fir);
                console.log(window);
                var opt = {
                    margin: 1,
                    filename: 'fir.pdf',
                    image: { type: 'jpeg', quality: 0.98 },
                    html2canvas: { scale: 2 },
                    jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
                };
                html2pdf().from(fir).set(opt).save();
            })
    }
    </script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>