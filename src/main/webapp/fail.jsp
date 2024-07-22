<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="sweetalert2.min.css">
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function showSuccessAlert(message) {
            Swal.fire({
            	icon: "error",
            	  title: "Oops...",
            	  text: "Something went wrong!",
                
                
                
                confirmButtonText: 'Try Again!!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = 'index.jsp'; // Redirect to success.jsp
                }
            });
        }

        showSuccessAlert("Error");
        
        
         
    </script>
	
</body>
</html>