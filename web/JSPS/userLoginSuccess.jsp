<%-- 
    Document   : userLoginSuccess
    Created on : Apr 18, 2024, 8:34:11 PM
    Author     : Sahan Maitipe
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Success</title>
       
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container mt-5">
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Login Successful!</h4>
                <p>Welcome, <%= session.getAttribute("username")%>!</p>
                <hr>
                <p class="mb-0">Where would you like to continue?</p>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Continue</h5>
                            <div class="mt-3">
                                <button id="homeBtn" class="btn btn-success btn-block">Home</button>
                                <button id="cartBtn" class="btn btn-primary btn-block">View Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                console.log("hello this is succesful login");
                
                const username = '<%= session.getAttribute("username") %>';
                const userID = '<%= session.getAttribute("userID") %>';
                
                localStorage.setItem("username", username);
                localStorage.setItem("userID", userID);
                
                console.log("Stored username in local storage: " + username);
                console.log("Stored userID in local storage: " + userID);
                
                homeBtn.addEventListener("click", function () {
                    window.location.href = '/Nero_Computers/index.html'; 
                });

                cartBtn.addEventListener("click", function () {
                    window.location.href = '/Nero_Computers/JSPS/cartView.jsp'; 
                });
            });
        </script>
    </body>
</html>
