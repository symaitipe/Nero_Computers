<%-- 
    Document   : Admin_Checkstore
    Created on : Apr 29, 2024, 10:02:20 AM
    Author     : User
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Checking stock</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css"> <!-- Link to your custom CSS file -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        /* Style for the header */
h1 {
    text-align: center;
    margin-top: 20px;
    color: #333;
}

/* Style for the links */
a {
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease;
}

a:hover {
    color: #0056b3;
}

/* Style for the category boxes */
.category-box {
    background-color: #f8f9fa;
    border: 1px solid #dee2e6;
    border-radius: 5px;
    padding: 20px;
    margin-bottom: 20px;
}


.category-title {
    font-size: 20px;
    margin-bottom: 10px;
}


.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

    </style>
</head>
<body>
    <div class="row">
        <jsp:include page="Admin_navbar.jsp" />
    </div>
    <br>
    <br>
    <h1>Store</h1>
    <div class="container">
        <div>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT categoryName,CategoryID FROM categories");
                    while (rs.next()) {
            %>

            <div class="category-box">
                <h5 class="category-title"><a href="Admin_store_table.jsp?categoryID=<%= rs.getInt("CategoryID")%>"><%= rs.getString("categoryName")%></a></h5>
            </div>

            <%
                    }
                    con.close();
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </div>
    </div>
</body>
</html>
