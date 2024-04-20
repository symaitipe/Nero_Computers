<%--
    Document   : brandProducts
    Created on : Apr 16, 2024, 10:36:27 PM
    Author     : Sahan Maitipe
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products of ${brand} in ${category}</title>
</head>
<body>
    <h1>Products of ${brand} in ${category}</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Description</th>
                <th>Unit Price</th>
                <th>Available Quantity</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
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
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
