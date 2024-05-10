<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Process</title>
    <script>
       
        function showLoginFailedPopup() {
            alert("Login Failed. Please try again.");
            
            window.location.href = "Admin_Loginprocess.jsp";
        }
    </script>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        String adminUsername = "admin";
        String adminPassword = "admin";

        if (username != null && password != null && username.equals(adminUsername) && password.equals(adminPassword)) {
            
            response.sendRedirect("Admin_Dashboard.jsp");
        } else {
            
    %>
            <script>
                
                showLoginFailedPopup();
            </script>
    <%
        }
    %>
</body>
</html>