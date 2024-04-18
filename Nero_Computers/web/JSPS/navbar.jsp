<%-- 
    Document   : navbar
    Created on : Apr 17, 2024, 7:58:16 PM
    Author     : Sahan Maitipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nero</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>


    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Your Brand</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/Nero_Computers/index.html"><i class="fas fa-home"></i> Home</a>
                    </li>
                    <li class="nav-item" id="loginNavItem">
                        <a class="nav-link" href="/Nero_Computers/JSPS/login.jsp"><i class="fas fa-user"></i> Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i> Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Nero_Computers/JSPS/confirmUserLogout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </li>
                    <li class="nav-item">
                        <form action="/Nero_Computers/ProductFilterServlet" method="GET" class="form-inline">
                            <label for="category" class="mr-sm-2">Select Category:</label>
                            <select id="category" name="category" class="form-control mr-sm-2">
                                <option value="All">All Categories</option>
                                <option value="Laptops">Laptops</option>
                                <option value="Smartphones">Smartphones</option>
                                <option value="Tablets">Tablets</option>
                                <option value="Accessories">Accessories</option>
                            </select>
                            <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i> Search</button>
                        </form>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--Internal Script for validate the user (if someone has logged in already)-->
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var loginNavItem = document.getElementById("loginNavItem");
                var username = localStorage.getItem("username");

                if (username) {
                    loginNavItem.innerHTML = '<a class="nav-link" href="#"><i class="fas fa-user"></i> ' + username + '</a>';
                    console.log(username);
                }
            });
        </script>
    </body>
</html>
