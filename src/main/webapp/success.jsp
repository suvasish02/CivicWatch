
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
	<!-- Your content here -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function showSuccessAlert(message) {
            Swal.fire({
                title: 'Success!',
                text: message,
                icon: 'success',
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = 'index.jsp'; // Redirect to success.jsp
                }
            });
        }

        
        <%
        	// Show the success alert if there is a success message
        	String sm=(String)request.getAttribute("message");
        if (sm != null) {
         %>
         showSuccessAlert("<%= sm %>");
         <%
        	}
         %>
        
         
    </script>
	

</body>
</html>