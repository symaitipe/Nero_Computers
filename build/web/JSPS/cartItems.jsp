
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    int userID = (int) session.getAttribute("userID");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cart Items</title>

        <style>

            .cart-table {
                margin-top:0;
            }
           
            .cart-item-row {
                padding: 10px 0;
            }
            
            .product-image {
                max-width: 100px;
                max-height: 100px;
            }
            
            .quantity-btns, .remove-btn {
                text-align: center;
            }
            
            .sidebar {
                border-left: 1px solid #ddd;
                padding: 20px;
            }
            .checkout-info {
                margin-bottom: 20px;
            }
        </style>
        
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container-fluid mt-5">

            <div class="row">
                <div class="col-md-8">
                    <table class="table cart-table">
                        <thead>
                            <tr>
                                <th>Product Image</th>
                                <th>Description</th>
                                <th>Unit Price</th>
                                <th>Selected Quantity</th>
                                <th>Total</th>
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
                            <td class="total-price">${cartItem.totalPrice}</td>
                            <td>
                                <button class="btn btn-sm btn-danger remove-btn">Remove</button>
                            </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-4 sidebar">
                    <div class="checkout-info">
                        <h4>Checkout Information</h4>
                        <p>Checkout Price: <span id="checkout-price">0.00</span></p>
                        <form id="checkout-form" method="POST">
                            <input type="text" name="contactNumber" class="form-control mb-2" placeholder="Contact Number">
                            <input type="text" name="shippingLocation" class="form-control mb-2" placeholder="Shipping Location">
                            <button type="submit" class="btn btn-primary btn-block">Checkout</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script>
            $(document).ready(function () {
                // Calculate checkout price when the page loads
                calculateCheckoutPrice();

                // Function to increase quantity
                $(".increase-quantity").click(function () {
                    var quantitySpan = $(this).siblings("span");
                    var quantity = parseInt(quantitySpan.text());
                    var availableQuantity = parseInt($(this).closest("tr").find('input[name="availableQuantity"]').val());
                    if (quantity < availableQuantity) {
                        quantitySpan.text(quantity + 1);
                        updateTotalPrice($(this));
                    } else {
                        alert("Quantity cannot be increased than available quantity!");
                    }
                });

                // Function to decrease quantity
                $(".decrease-quantity").click(function () {
                    var quantitySpan = $(this).siblings("span");
                    var quantity = parseInt(quantitySpan.text());
                    if (quantity > 1) {
                        quantitySpan.text(quantity - 1);
                        updateTotalPrice($(this));
                    } else {
                        alert("Quantity cannot be less than 1!");
                    }
                });

                // Function to remove item
                $(".remove-btn").click(function () {
                    var productId = $(this).closest("tr").find('input[name="productId"]').val();
                    $(this).closest("tr").remove();

                    calculateCheckoutPrice();
                });

                // Function to update total price
                function updateTotalPrice(button) {
                    var quantity = parseInt(button.siblings("span").text());
                    var unitPrice = parseFloat(button.closest("tr").find('td:eq(2)').text());
                    var totalPrice = quantity * unitPrice;
                    button.closest("tr").find('.total-price').text(totalPrice.toFixed(2));
                    calculateCheckoutPrice();
                }

                // Function to calculate checkout price
                function calculateCheckoutPrice() {
                    var totalPrice = 0;
                    $(".total-price").each(function () {
                        totalPrice += parseFloat($(this).text());
                    });
                    $("#checkout-price").text(totalPrice.toFixed(2));
                }

                // Form submission handling via AJAX
                $("#checkout-form").submit(function (event) {
                    event.preventDefault(); // Prevent default form submission

                    // Collect order details
                    var orderDetails = [];
                    $(".cart-item-row").each(function () {
                        var productId = $(this).find('input[name="productId"]').val();
                        var selectedQuantity = parseInt($(this).find(".quantity-btns span").text());
                        orderDetails.push({productId: productId, quantity: selectedQuantity});
                    });

                    // Prepare form data
                    var formData = {
                        userID: <%= userID%>,
                        contactNumber: $("input[name='contactNumber']").val(),
                        shippingLocation: $("input[name='shippingLocation']").val(),
                        orderDetails: orderDetails
                    };

                    // Submit form via AJAX
                    $.ajax({
                        type: "POST",
                        url: "/Nero_Computers/CheckoutServlet", 
                        data: JSON.stringify(formData),
                        contentType: "application/json",
                        success: function (response) {
                            // Handle success response (e.g., redirect to confirmation page)
                            window.location.href = "/Nero_Computers/JSPS/checkoutsuccess.jsp";
                        },
                        error: function (xhr, status, error) {
                            // Handle error
                            console.error(xhr.responseText);
                        }
                    });
                });
            });
        </script>

    </body>
</html>
