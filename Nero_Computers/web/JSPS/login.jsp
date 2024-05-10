<%-- 
    Document   : login
    Created on : Apr 17, 2024, 7:37:01 PM
    Author     : Sahan Maitipe
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
    </head>
    <body>       
        <jsp:include page="navbar.jsp" />
        <div class="container mt-5">
            <h2 class="text-center">Login</h2>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Login as</h5>
                            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options" id="userRadio" autocomplete="off" checked>User
                                </label>
                                <label class="btn btn-primary">
                                    <input type="radio" name="options" id="adminRadio" autocomplete="off">Admin
                                </label>
                            </div>
                            <div class="mt-3">
                                <a id="loginBtn" href="#" class="btn btn-success btn-block"><i class="fas fa-sign-in-alt"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#loginBtn').click(function () {
                    if ($('#userRadio').prop('checked')) {
                        window.location.href = 'userLogin.jsp';
                    } else if ($('#adminRadio').prop('checked')) {
                        window.location.href = 'adminLogin.jsp';
                    }
                });
            });
        </script>

    </body>
</html>



