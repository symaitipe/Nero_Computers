<%-- 
    Document   : newjsp
    Created on : 10-Apr-2024, 23:06:29
    Author     : mphfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script>
        function validateForm() {
            var contactno = document.forms["myForm"]["contactno"].value;
            var password = document.forms["myForm"]["psw"].value;
            var confirmPassword = document.forms["myForm"]["confirmPsw"].value;

            
            if (contactno === "") {
                alert("Contact number must be filled out");
                return false;
            }

            
            var contactRegex = /^\d{10}$/;
            if (!contactRegex.test(contactno)) {
                alert("Invalid contact number format. Please enter 10 digits.");
                return false;
            }

            
            if (password !== confirmPassword) {
                alert("Passwords do not match");
                return false;
            }

            
            return true;
        }
    </script>
</head>
<body>
    <center>
        <form method="POST" name="myForm" onsubmit="return validateForm()">
            <h1>Register</h1>
            <table border="1">
                <tbody>
                    <tr>
                        <td>First Name:</td>
                        <td><input type='text' name="uname" value=""/></td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><input type='text' name="lname" value=""/></td>
                    </tr>
                    <tr>
                        <td>Phone number:</td>
                        <td><input type='text' name="contactno" value=""/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="psw" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type="password" name="confirmPsw" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            Already a member? <a href="loginform.jsp">click</a>
        </form>
    </center>
</body>
</html>
