<%-- 
    Document   : index
    Created on : Apr 29, 2024, 9:52:48 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin dashboard</title>
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
                            <a class="nav-link active" aria-current="" href="index.jsp">Orders</a>
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
           
            <div class="admin-info">
                <a href="Admin_logout.jsp"><img src="AdminImages\Adminlogo.jpg" alt="Admin Avatar" "></a>
                <span>Admin log out</span>
            </div>
            </div>
             <div class="col-2" style="width: 50px;"  >
            
            <img src="AdminImages\Logo.jpg" alt="Logo" style="width: 50px;">
        
        </div>
   
        </div>
            <div class="col-2">
                <p>Admin account</p>
            </div>
        </div>
        <div class="row">
            <h1></h1>
        </div>
        <div class="row">
            <div class="col">
                <form action="orderdetails.java" method="POST">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Order ID</th>
                                <th scope="col">User ID</th>
                                <th scope="col">Contact Number</th>
                                <th scope="col">Shipping Location</th>
                                <th scope="col">Order Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");
                                    Statement stmt = con.createStatement();
                                    ResultSet rs = stmt.executeQuery("SELECT * FROM orders");
                                    while (rs.next()) {
                            %>
                            <tr>
                                <td><%= rs.getInt("OrderID")%></td>
                                <td><%= rs.getInt("UserID")%></td>
                                <td><%= rs.getString("ContactNumber")%></td>
                                <td><%= rs.getString("ShippingLocation")%></td>
                                <td><%= rs.getDate("OrderDate")%></td>
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
                </form>
            </div>
        </div>

    </body>
</html>
