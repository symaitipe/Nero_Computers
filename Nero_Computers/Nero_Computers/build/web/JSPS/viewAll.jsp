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
        <title>All Product List</title>
        <style>
            
            .card {
                margin-bottom: 20px;
                position: relative; 
            }
            .card-img-top {
                height: 50%;
                object-fit: cover;
            }
            .out-of-stock-label {
                position: absolute;
                bottom: 10px;
                left: 50%;
                transform: translateX(-50%);
                background-color: #ff0000;
                color: #ffffff;
                padding: 5px;
                border-radius: 5px;
                margin-top: 10px; 
                
            }
            .card-body {
                margin-bottom: 40px; 
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container">
            <h1 class="mt-3 mb-3">ALL PRODUCTS</h1>
            <div class="row">
                <c:forEach items="${products}" var="product">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="${product.imageURL}" class="card-img-top" alt="Product Image">
                            <div class="card-body">
                                <h5 class="card-title brand-name">${product.brandName}</h5> <!-- Center align brand name -->
                                <p class="card-text">${product.description}</p>
                                <p class="card-text">Unit Price: ${product.unitPrice}</p>
                                <p class="card-text">Available Quantity: ${product.availableQuantity}</p>
                                <c:choose>
                                    <c:when test="${product.availableQuantity eq 0}">
                                        <form action="AddToCartServlet" method="post">
                                            <input type="hidden" name="productId" value="${product.productID}">
                                            <button type="submit" class="btn btn-danger add-to-cart-button" disabled>Out of Stock</button>
                                        </form>
                                    </c:when>
                                    <c:otherwise>
                                        <form action="AddToCartServlet" method="post">
                                            <input type="hidden" name="productId" value="${product.productID}">
                                            <button type="submit" class="btn btn-primary add-to-cart-button">Add to Cart</button>
                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
