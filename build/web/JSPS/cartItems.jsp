<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cart Items</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <style>
            /* Add your custom styles here */
            /* Center the table */
            .cart-table {
                margin: 0 auto;
            }
            /* Add some padding to the table rows */
            .cart-item-row {
                padding: 10px 0;
            }
            /* Style the product image */
            .product-image {
                max-width: 100px;
                max-height: 100px;
            }
            /* Center align buttons */
            .quantity-btns, .remove-btn {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="mt-5 mb-4">Cart Items</h1>
            <table class="table cart-table">
                <thead>
                    <tr>
                        <th>Product Image</th>
                        <th>Description</th>
                        <th>Unit Price</th>
                        <th>Selected Quantity</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cartItems}" var="cartItem">
                        <tr class="cart-item-row">
                            <td><img src="${cartItem.productURL}" alt="Product Image" class="product-image"></td>
                            <td>${cartItem.productDescription}</td>
                            <td>${cartItem.unitPrice}</td>
                    <input type="hidden" name="productId" value="${cartItem.productID}">
                    <input type="hidden" name="availableQuantity" value="${cartItem.availableQuantity}">
                    <td>
                        <div class="quantity-btns">
                            <button class="btn btn-sm btn-secondary decrease-quantity">-</button>
                            <span>${cartItem.selectedQuantity}</span>
                            <button class="btn btn-sm btn-secondary increase-quantity">+</button>
                        </div>
                    </td>
                    <td>
                        <button class="btn btn-sm btn-danger remove-btn">Remove</button>
                    </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Bootstrap JS and jQuery (optional) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!-- Custom JavaScript -->
        <script>
            $(document).ready(function () {
                // Store available quantities in an object
                var availableQuantities = {};

                // Iterate over each row to store available quantities
                $(".cart-item-row").each(function () {
                    var productId = $(this).find(".product-id").text();
                    var availableQuantity = parseInt($(this).find(".available-quantity").text());
                    availableQuantities[productId] = availableQuantity;
                });

                // Increase quantity button
                $(".increase-quantity").click(function () {
                    var quantityElement = $(this).siblings("span");
                    var currentQuantity = parseInt(quantityElement.text());
                    var productId = $(this).closest("tr").find(".product-id").text();
                    var availableQuantity = availableQuantities[productId];

                    if (currentQuantity < availableQuantity) {
                        quantityElement.text(currentQuantity + 1);
                    } else {
                        // Display an error message or handle it in your preferred way
                        alert("Cannot increase quantity beyond available quantity!");
                    }
                });


                // Decrease quantity button
                $(".decrease-quantity").click(function () {
                    var quantityElement = $(this).siblings("span");
                    var currentQuantity = parseInt(quantityElement.text());

                    if (currentQuantity > 1) {
                        quantityElement.text(currentQuantity - 1);
                    } else {
                        // Display an error message or handle it in your preferred way
                        alert("Quantity cannot be less than 1!");
                    }
                });
            });
        </script>
    </body>
</html>
