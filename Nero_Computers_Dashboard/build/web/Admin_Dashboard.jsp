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
    <body >
        <div class="row">
            <jsp:include page="Admin_navbar.jsp" />
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
