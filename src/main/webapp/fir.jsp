<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FIR Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="sweetalert2.min.css">
    <style type="text/css">
    	body {
    background-color: #f8f9fa;
}

.card {
    margin: auto;
    width: 50%;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.card-header {
    background-color: #007bff;
    color: white;
    text-align: center;
}

.form-group label {
    font-weight: bold;
}
    	
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="text-center">First Information Report (FIR)</h3>
            </div>
            <div class="card-body">
                <form action="./addFir" method="post">
                    <div class="form-group">
                        <label for="district">District</label>
                        <input type="text" name="district" class="form-control" id="district" placeholder="Enter District" required>
                    </div>
                    <div class="form-group">
                        <label for="policeStation">Police Station</label>
                        <input type="text" name="ps" class="form-control" id="policeStation" placeholder="Enter Police Station" required>
                    </div>
                    <div class="form-group">
                        <label for="dateOccurrence">Date of Occurrence</label>
                        <input type="date" class="form-control" id="dateOccurrence" required name="doc">
                    </div>
                    <div class="form-group">
                        <label for="timeOccurrence">Time of Occurrence</label>
                        <input type="time" class="form-control" id="timeOccurrence" name="toc" required="required">
                    </div>
                    
                    <div class="form-group">
                        <label for="informantName">Informant's Name</label>
                        <input type="text" class="form-control" id="informantName" placeholder="Enter Informant's Name" name="iName" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantName">Informant's Father Name</label>
                        <input type="text" class="form-control" id="informantName" placeholder="Enter Informant's Father Name" name="iFName" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantName">Informant's Mobile Number</label>
                        <input type="text" class="form-control" id="informantName" placeholder="Enter Informant's Mobile Number" name="iMno" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantName">Informant's DOB</label>
                        <input type="date" class="form-control" id="informantName" placeholder="Enter Informant's DOB" name="idob" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantName">Informant's Nationality</label>
                        <input type="text" class="form-control" id="informantName" placeholder="Enter Informant's Nationality" name="ination" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantName">Informant's Aadhar Number</label>
                        <input type="text" class="form-control" id="informantName" placeholder="Enter Informant's Aadhar Number" name="iaadhar" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantName">Informant's Occupation</label>
                        <input type="text" class="form-control" id="informantName" placeholder="Enter Informant's Occupation" name="ioccupation" required="required">
                    </div>
                    <div class="form-group">
                        <label for="informantAddress">Informant's Address</label>
                        <textarea class="form-control" id="informantAddress" rows="3" placeholder="Enter Informant's Address" name="iaddress" required="required"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="crimeType">Type of Crime</label>
                        <select class="form-control" id="crimeType" name="crimetype" >
                            <option value="">Select Crime Type</option>
                            <option value="theft">Theft</option>
                            <option value="assault">Assault</option>
                            <option value="murder">Murder</option>
                            <option value="fraud">Fraud</option>
                            <option value="kidnapping">Kidnapping</option>
                            <option value="Burglary">Burglary</option>
                            <option value="Arson">Arson</option>
                            <option value="Forgery">Forgery</option>
                            <option value="Human Trafficking">Human Trafficking</option>
                            <option value="Money Laundering:">Money Laundering</option>
                            <option value="Other">Others</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="detailsAccused">Details of Crime</label>
                        <textarea class="form-control" id="detailsAccused" rows="3" placeholder="Enter Details of Crime" name="detailofcrime"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
