<%-- 
    Document   : Admin_Addcard
    Created on : Apr 29, 2024, 10:03:37 AM
    Author     : User
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Product</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color:lightgray;
            }

            .add-product-form {
                width: 600px;
                margin: 100px auto;
                padding: 20px;
                border: 1px solid black;
                border-radius: 10px;
            }

            .add-product-form h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            .add-product-form label {
                display: block;
                margin-bottom: 5px;
            }

            .add-product-form input[type="text"],
            .add-product-form input[type="url"],
            .add-product-form textarea {
                width: 100%;
                padding: 10px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 15px;
            }

            .add-product-form select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 15px;
            }

            .add-product-form button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .add-product-form button:hover {
                background-color: #3e8e41;
            }
        </style>
            <script>
        function validateForm() {
            var imageUrl = document.getElementById("imageUrl").value;
            if (imageUrl.trim() == "") {
                alert("Please enter URL");
                return false;
            }
            return true;
        }
    </script>
    </head>
    <body>
        <div class="add-product-form">
            <h2>Add New Product</h2>
            <form action="Admin_submit_product.jsp" method="post" onsubmit="return validateForm()">
                <label for="productCategory">Product Category:</label>
                <select id="productCategory" name="productCategory">
                    <%
                        // JDBC Connection
                        Connection conn = null;
                        PreparedStatement pstmt = null;
                        ResultSet rs = null;

                        try {
                            // Load the MySQL JDBC driver
                            Class.forName("com.mysql.jdbc.Driver");

                            // Connect to the database
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");

                            // Prepare SQL statement
                            String sql = "SELECT CategoryName FROM categories";
                            pstmt = conn.prepareStatement(sql);

                            // Execute SQL statement
                            rs = pstmt.executeQuery();

                            // Loop through the result set and populate options
                            while (rs.next()) {
                                String categoryName = rs.getString("CategoryName");
                    %>
                    <option value="<%= categoryName%>"><%= categoryName%></option>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            // Close resources
                            try {
                                if (rs != null) {
                                    rs.close();
                                }
                                if (pstmt != null) {
                                    pstmt.close();
                                }
                                if (conn != null) {
                                    conn.close();
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    %>
                </select>

                <label for="Brand">Brand:</label>
                <select id="Brand" name="Brand">
                    <%
                        // JDBC Connection
                        Connection connBrands = null;
                        PreparedStatement pstmtBrands = null;
                        ResultSet rsBrands = null;

                        try {
                            // Connect to the database
                            connBrands = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");

                            // Prepare SQL statement
                            String sqlBrands = "SELECT BrandName FROM brands";
                            pstmtBrands = connBrands.prepareStatement(sqlBrands);

                            // Execute SQL statement
                            rsBrands = pstmtBrands.executeQuery();

                            // Loop through the result set and populate options
                            while (rsBrands.next()) {
                                String brandName = rsBrands.getString("BrandName");
                    %>
                    <option value="<%= brandName%>"><%= brandName%></option>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            // Close resources
                            try {
                                if (rsBrands != null) {
                                    rsBrands.close();
                                }
                                if (pstmtBrands != null) {
                                    pstmtBrands.close();
                                }
                                if (connBrands != null) {
                                    connBrands.close();
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    %>
                </select>           

                <label for="imageUrl">Image URL:</label>
                <input type="url" id="imageUrl" name="imageUrl">

                <label for="productDescription">Product Description:</label>
                <textarea id="productDescription" name="productDescription" ></textarea>

                <label for="price">Price:</label>
                <input type="text" id="price" name="price" >

                <button type="submit">Submit</button>
                <button type="button">Cancel</button>
            </form>
        </div>
    </body>
</html>
