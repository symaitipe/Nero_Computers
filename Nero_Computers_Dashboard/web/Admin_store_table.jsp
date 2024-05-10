<%-- 
    Document   : Admin_store_table
    Created on : May 1, 2024, 8:51:15 PM
    Author     : User
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Store</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>
         <jsp:include page="Admin_navbar.jsp" />
        <br>
         <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Product ID</th>
                                <th scope="col">Brand Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Available Quantity</th>
                                
                            </tr>
                        </thead>
                        <tbody>

          <%
   try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");
        Statement stmt = con.createStatement();
        String catid = request.getParameter("categoryID");
                PreparedStatement pstmt = con.prepareStatement("SELECT p.ProductID, b.BrandName,p.Description, p.AvailableQuantity FROM products p INNER JOIN brands b ON p.BrandID = b.BrandID INNER JOIN categories c ON p.CategoryID = c.CategoryID WHERE p.CategoryID = ?");
                pstmt.setString(1, catid);
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
%>
        
            <tr>
            <td><%= rs.getString("ProductID") %></td>
            <td><%= rs.getString("BrandName") %></td>
            <td><%= rs.getString("Description") %></td>
            <td><%= rs.getInt("AvailableQuantity") %></td>
        </tr>

<%
        }
        
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
%>


                             </tbody>
                    </table>
 </div>
        </div>

</html>
