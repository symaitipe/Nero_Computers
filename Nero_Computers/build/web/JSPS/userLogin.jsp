<%-- 
    Document   : userLogin
    Created on : Apr 17, 2024, 8:21:19 PM
    Author     : Sahan Maitipe
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Login</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        
        <div class="container mt-5">
            <h2 class="text-center">User Login</h2>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">

                            <!--Form for submit user details-->
                            <form id="loginForm" action="/Nero_Computers/UserLoginServlet" method="POST">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" id="username" name="username" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" id="password" name="password" class="form-control" required>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block" onclick="validateForm()"><i class="fas fa-sign-in-alt"></i> Login</button>
                            </form>

                            <div class="mt-3 text-center">
                                <p>Don't have an account? <a href="SignUp.jsp">Sign up</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>