<%-- 
    Document   : Admin_submit_product
    Created on : May 10, 2024, 8:56:39 PM
    Author     : User
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Retrieve form data
    String productCategory = request.getParameter("productCategory");
    String brandName = request.getParameter("Brand");
    String imageUrl = request.getParameter("imageUrl"); // Corrected parameter name
    String productDescription = request.getParameter("productDescription");
    String price = request.getParameter("price");

    // Database connection
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Connect to the database
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");

        // Retrieve CategoryID based on CategoryName
        String categorySql = "SELECT CategoryID FROM categories WHERE CategoryName = ?";
        pstmt = conn.prepareStatement(categorySql);
        pstmt.setString(1, productCategory);
        ResultSet rsCategory = pstmt.executeQuery();
        int categoryID = 0;
        if (rsCategory.next()) {
            categoryID = rsCategory.getInt("CategoryID");
        }

        // Retrieve BrandID based on BrandName
        String brandSql = "SELECT BrandID FROM brands WHERE BrandName = ?";
        pstmt = conn.prepareStatement(brandSql);
        pstmt.setString(1, brandName);
        ResultSet rsBrand = pstmt.executeQuery();
        int brandID = 0;
        if (rsBrand.next()) {
            brandID = rsBrand.getInt("BrandID");
        }

        // Insert product data into the products table
        String insertSql = "INSERT INTO products (CategoryID, BrandID, Description, UnitPrice, ImageURL) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertSql);
        pstmt.setInt(1, categoryID);
        pstmt.setInt(2, brandID);
        pstmt.setString(3, productDescription);
        pstmt.setString(4, price);
        pstmt.setString(5, imageUrl); 
        pstmt.executeUpdate();

        // Display success message or redirect to a success page
        out.println("<p>Product added successfully!</p>");

    } catch (Exception e) {
        // Handle any exceptions
        out.println("<p>Error: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } finally {
        // Close resources
        try {
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
