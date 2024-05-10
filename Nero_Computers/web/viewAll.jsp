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
<style>
.card {
                margin-bottom: 20px;
                position: relative;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                transition: 0.3s;
                border-radius: 8px;
            }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
            }

            .card-img-top {
                height: 200px;
                object-fit: cover;
                transition: transform 0.3s;
            }

            .card:hover .card-img-top {
                transform: scale(1.05);
            }

            .card-body {
                padding: 1.25rem;
                text-align: center;
                margin-bottom: 40px;
            }

            .card-title {
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .card-text {
                margin-bottom: 0.75rem;
            }

            .add-to-cart-button {
                margin-top: 1rem;
            }
        </style>
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
