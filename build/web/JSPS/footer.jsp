<%-- 
    Document   : footer
    Created on : Apr 19, 2024, 2:47:19 PM
    Author     : Sahan Maitipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            /* Additional CSS for footer */ 
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
        </style>
    </head>
    <body>
        <div>
            <!--Space div-->
            <div class="container-fluid mt-3 spaceDiv"></div>
            <footer class="bg-dark text-white py-5">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="col-md-3 mb-3">
                            <div class="card bg-dark text-white footer-card">
                                <div class="card-body text-center">
                                    <img src="assets/logo.jpg" alt="Logo" class="img-fluid">
                                </div>
                            </div>
                        </div>
                        <!-- About Us -->
                        <div class="col-md-3 mb-3">
                            <div class="card bg-dark text-white footer-card">
                                <div class="card-body">
                                    <h5 class="card-title">ABOUT US</h5>
                                    <p class="card-text">Welcome to Nero_Computers, your premier destination for all things tech. From cutting-edge devices to top-notch services, we've got you covered. Join us as we redefine the future of computing.</p>
                                </div>
                            </div>
                        </div>
                        <!-- Services -->
                        <div class="col-md-3 mb-3">
                            <div class="card bg-dark text-white footer-card">
                                <div class="card-body">
                                    <h5 class="card-title">SERVICES</h5>
                                    <ul class="list-unstyled">
                                        <li>Service 1</li>
                                        <li>Service 2</li>
                                        <li>Service 3</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Contact Us -->
                        <div class="col-md-3 mb-3">
                            <div class="card bg-dark text-white footer-card">
                                <div class="card-body">
                                    <h5 class="card-title">CONTACT US</h5>
                                    <ul class="list-unstyled">
                                        <li>Email: info@example.com</li>
                                        <li>Phone: +1234567890</li>
                                        <li>Address: 123 Street, City, Country</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </body>
    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>
