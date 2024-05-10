<%-- 
    Document   : Admin_navbar
    Created on : May 10, 2024, 9:30:37 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nero</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <style>
            
            .spaceDiv{
                height: 2vh;
            }
            .footer-card {
                border-color: greenyellow;
                border-radius: 15px; 
                margin-bottom: 20px;
                width: 100%;
                height: 100%;
            }

            #navbarSupportedContent{
                display:flex;
                justify-content: space-between;
            }

        </style>
    </head>


    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg  navbar-dark bg-dark">


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div> <img src="/Nero_Computers_Dashboard/assets/logo.jpg" style="height:80px; width:80px"></div>
                <div style="padding-left:400px;">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <form action="/Nero_Computers_Dashboard/ProductFilterServlet" method="GET" class="form-inline">
                                <label for="category" class="mr-sm-2" style="font-weight: bold; color: white;">Select Category</label>
                                <select id="category" name="category" class="form-control mr-sm-2 wide-select"  style="width: 300px;">
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
                <div>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Dashboard.jsp"><i class="fas fa-home"></i> Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Category.jsp"><i class="fas fa-shopping-cart"></i> Category</a>
                        </li>
                        <li class="nav-item" id="loginNavItem">
                            <a class="nav-link" href="Admin_Checkstore.jsp"><i class="fas fa-user"></i> Check Store</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--Internal Script for validate the user (if someone has logged in already)-->
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                console.log("hello");
                var loginNavItem = document.getElementById("loginNavItem");
                var username = localStorage.getItem("username");
                console.log(username);


                if (username) {
                    loginNavItem.innerHTML = '<a class="nav-link" href="#"><i class="fas fa-user"></i> ' + username + '</a>';
                    console.log(username);
                }
            });
        </script>
    </body>
</html>
