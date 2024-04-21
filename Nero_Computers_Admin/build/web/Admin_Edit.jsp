<%-- 
    Document   : Admin_Edit
    Created on : Apr 21, 2024, 6:33:31 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>
            <h1>Edit Product</h1>
    <form action="UpdateProductServlet" method="post">
        <input type="hidden" name="productId" value="<%= request.getParameter("productId") %>">
        <div>
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" value="<%= request.getParameter("productName") %>">
        </div>
        <div>
            <label for="productPrice">Product Price:</label>
            <input type="text" id="productPrice" name="productPrice" value="<%= request.getParameter("productPrice") %>">
        </div>
        <!-- Add other fields as needed -->
        
         <a href="Admin_Edit.jsp?productId=<%= request.getParameter("productId") %>&productName=<%= request.getParameter("productName") %>&productPrice=<%= request.getParameter("productPrice") %>" class="btn btn-primary" style="background-color: red; color: white;">Edit</a>

        <button type="submit" >Update</button>
    </form>
    </body>
</html>
