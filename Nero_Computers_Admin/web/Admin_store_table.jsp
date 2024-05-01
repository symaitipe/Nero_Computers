<%-- 
    Document   : Admin_Checkstore
    Created on : Apr 21, 2024, 6:34:26 PM
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
    <body class="container">
                <div class="row">
            <h1></h1>
        </div>
        <div class="row">
            <div class="col-8">
              <nav class="nav nav-pills">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="" href="index.html">Pending Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Shipping.jsp">Shipping Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Category.jsp">Category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Checkstore.jsp">Check store</a>
                        </li>
                    </ul>
                </nav>
            </div>

            <div class="col-2">
                <p>Nero computers logo</p>
            </div>
            <div class="col-2">
                <p>Admin account</p>
            </div>
        </div>
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
        //3String catid=request.getParameter("CategoryID");
        // Query to fetch data from the "brands" table
        //ResultSet rs = stmt.executeQuery("SELECT p.ProductID, b.BrandName, p.AvailableQuantity FROM products p INNER JOIN brands b ON p.BrandID = b.BrandID INNER JOIN categories c ON p.CategoryID = c.CategoryID WHERE p.CategoryID = catid");
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
