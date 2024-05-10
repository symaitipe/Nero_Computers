<%--
    Document   : brandProducts
    Created on : Apr 16, 2024, 10:36:27 PM
    Author     : Sahan Maitipe
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html>
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
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container">
            <h1 class="mt-4">${fn:toUpperCase(brand)} ${fn:toUpperCase(category)}</h1>
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <c:forEach items="${products}" var="product">
                    <div class="col">
                        <div class="card">
                            <img src="${product.imageURL}" class="card-img-top" alt="Product Image">
                            <div class="card-body">
                                <h5 class="card-title">${product.description}</h5>
                                <p class="card-text">Unit Price: ${product.unitPrice}</p>
                                <p class="card-text">Available Quantity: ${product.availableQuantity}</p>
                                <c:choose>
                                    <c:when test="${product.availableQuantity eq 0}">
                                        <form action="AddToCartServlet" method="post">
                                            <input type="hidden" name="productId" value="${product.productID}">
                                            <button type="submit" class="btn btn-danger" disabled>Out of Stock</button>
                                        </form>
                                    </c:when>
                                    <c:otherwise>
                                        <form action="AddToCartServlet" method="post">
                                            <input type="hidden" name="productID" value="${product.productID}">
                                            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>">
                                            <input type="hidden" name="userID" value="<%= session.getAttribute("userID")%>">

                                            <button type="submit" class="btn btn-primary">Add to Cart</button>
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
