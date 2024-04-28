<%-- 
    Document   : view
    Created on : Apr 15, 2024, 10:41:45 PM
    Author     : Sahan Maitipe
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product List</title>
</head>
<body>
    <h1>Product List</h1>
    <table border="1">
        <thead>
            <tr>
                
                <th>Brand Name</th>
                <th>Description</th>
                <th>Unit Price</th>
                <th>Available Quantity</th>
                <th>Image</th>
                  <th> </th> 
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                   
                    <td>${product.brandName}</td>
                    <td>${product.description}</td>
                    <td>${product.unitPrice}</td>
                    <td>${product.availableQuantity}</td>
                    <td><img src="${product.imageURL}" alt="Product Image" width="100"></td>
                    <td>
                        <!-- Add to Cart button -->
                        <form action="AddToCartServlet" method="post">
                            <input type="hidden" name="productId" value="${product.productID}">
                            <input type="submit" value="Add to Cart">
                        </form>
                    </td>
                </tr>
                <script>
                    console.log("Product ID: ${product.productID}");
                    console.log("Brand Name: ${product.brandName}");
                    console.log("Category ID: ${product.categoryID}");
                    console.log("Description: ${product.description}");
                    console.log("Unit Price: ${product.unitPrice}");
                    console.log("Available Quantity: ${product.availableQuantity}");
                    console.log("Image URL: ${product.imageURL}");
                    console.log("-------------------------");
                </script>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
