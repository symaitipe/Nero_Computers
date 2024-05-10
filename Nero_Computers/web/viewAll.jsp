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

            .card-body {
                margin-bottom: 40px; 
            }

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
        <jsp:include page="navbar.jsp" />
        <div class="container">
            <h1 class="mt-3 mb-3">ALL PRODUCTS</h1>
            <div class="row">
                <c:forEach items="${products}" var="product">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="${product.imageURL}" class="card-img-top" alt="Product Image">
                            <div class="card-body">
                                <h5 class="card-title brand-name">${product.brandName}</h5> 
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
                                            <input type="hidden" name="productID" value="${product.productID}">
                                            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>">
                                            <input type="hidden" name="userID" value="<%= session.getAttribute("userID")%>">

                                            <button type="submit" class="btn btn-primary add-to-cart-button">Add to cart</button>

                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


        <!-- Success Modal -->
        <div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="successModalLabel">Success</h5>
                    </div>
                    <div class="modal-body">
                        <!-- Success message here -->
                        <%= request.getAttribute("successMessage")%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="successCloseBtn">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Error Modal -->
        <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="errorModalLabel">Error</h5>
                    </div>
                    <div class="modal-body">
                        <!-- Error message here -->
                        <%= request.getAttribute("errorMessage")%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="errorCloseBtn">Close</button>
                        <button type="button" class="btn btn-primary" onclick="window.location.href = '/Nero_Computers/JSPS/userLogin.jsp'">Login</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Script to trigger modals -->
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                console.log("view all products. jsp")
                var successMessage = "<%= request.getAttribute("successMessage")%>";
                var errorMessage = "<%= request.getAttribute("errorMessage")%>";

                if (successMessage !== "null") {
                    $('#successModal').modal('show');
                } else if (errorMessage !== "null") {
                    $('#errorModal').modal('show');
                }
            });


            document.addEventListener("DOMContentLoaded", function () {
                // Add event listeners to close buttons
                document.getElementById("successCloseBtn").addEventListener("click", function () {
                    window.history.back();
                });

                document.getElementById("errorCloseBtn").addEventListener("click", function () {
                    window.history.back();
                });
            });

        </script>



    </body>
</html>

