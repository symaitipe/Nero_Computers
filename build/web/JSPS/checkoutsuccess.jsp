<%-- 
    Document   : checkoutsuccess
    Created on : Apr 29, 2024, 8:16:51 PM
    Author     : Sahan Maitipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Checkout Success</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container mt-5">
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Congratulations!</h4>
                <p>Your order has been placed successfully.</p>
                <hr>
                <p class="mb-0">Thank you for shopping with us!</p>
                <button id="redirectButton" class="btn btn-primary mt-3">OK</button>
            </div>
        </div>


        <script>          
            document.getElementById("redirectButton").addEventListener("click", function () {
                window.location.href = "/Nero_Computers/index.html";
            });
        </script>

    </body>
</html>