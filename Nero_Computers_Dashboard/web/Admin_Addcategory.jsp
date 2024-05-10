<%-- 
    Document   : Admin_Add
    Created on : Apr 29, 2024, 10:03:14 AM
    Author     : User
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add new category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: lightgray;
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
</head>
<body>
    <div class="add-product-form">
        <h2>Add New Category</h2>
        <form action="" method="post">
            <label for="Category">Category:</label>
            <input type="text" id="category" name="category">
            <button type="submit">Add</button>
            <button type="button" onclick="window.location.href = 'your_cancel_page.jsp'">Cancel</button>
        </form>
    </div>

    <% 
        // JDBC Connection
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");

            // Retrieve category name from the form
            String categoryName = request.getParameter("category");

            // Prepare SQL statement
            String sql = "INSERT INTO categories (CategoryName) VALUES (?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, categoryName);

            // Execute SQL statement
            pstmt.executeUpdate();

            // Display success message or redirect to a success page
            out.println("<p>Category added successfully!</p>");

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

</body>
</html>
