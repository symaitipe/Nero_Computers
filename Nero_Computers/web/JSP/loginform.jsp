<%-- 
    Document   : loginform
    Created on : 11-Apr-2024, 12:15:42
    Author     : mphfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        
   <center><form method="POST">
        <h1>log in form</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>User Name:</td>
                    <td><input type="text" name="uname" value="" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="pwd" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" name="sb" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
            New member?<a href="newjsp.jsp">Register here</a>
       </form>
   </center>
    </body>
</html>
