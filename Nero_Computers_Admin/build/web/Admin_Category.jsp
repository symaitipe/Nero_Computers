<%-- 
    Document   : Admin_Category
    Created on : Apr 21, 2024, 6:32:12 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body class="container">
        <div class="row">
            <h1></h1>
        </div>
        <div class="row">
            <div class="col-8">
                <nav class="nav nav-pills" >
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="" href="index.html">Pending Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Shipping.jsp">Shipping Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Category.jsp">Category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Admin_Checkstore.jsp">Check store</a>
                        </li>
                    </ul>
                </nav>
            </div>

            <div class="col-2">
                <p>Nero computers logo</p>
            </div>
            <div class="col-2">
                <p>Admin account</p>
            </div>
        </div>
        <br>
        <br>
        <div class="row">
            <div class="col">
                <h3>To add category</h3>
            </div>
            <div class="col">
                <a href="Admin_Add.jsp" class="btn btn-primary" >Add</a>
            </div>
        </div>
        <br>
        <br>
        <div class="row">
            <div class="card col-md-4"> <img class="card-img-top" src="images/OIP.jpeg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">ASUS Vivobook 16 X1605VA (Intel Core i5-13500H, 8GB RAM, 512GB SSD)</h5>
                    <p class="card-text">
                        <span style="color: red;">Rs. 229,000.00</span><br>


                        <a href="Admin_Edit.jsp" class="btn btn-primary" style="background-color: red; color: white;">Edit</a></div>
            </div>
            <div class="card col-md-4"> <img class="card-img-top" src="images/OIP (1).jpeg" alt="Card image cap">
                <div class="card-body">

                    <h5 class="card-title">ASUS VIVOBOOK 16 X1605VA I7-13700H|8GB|512GB|16.0 WUXGA</h5>
                    <p class="card-text">
                        <span style="color: red;">Rs. 289,000.00</span><br>


                        <a href="Admin_Edit.jsp" class="btn btn-primary" style="background-color: red; color: white;">Edit</a></div>
            </div>
            <div class="card col-md-4"> <img class="card-img-top" src="images/OIP (2).jpeg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">ASUS VIVOBOOK 15 A1502ZA I3-1215U|4GB|256NVME|DOS</h5>
                    <p class="card-text">
                        <span style="color: red;">Rs. 128,000.00</span><br>


                        <a href="Admin_Edit.jsp" class="btn btn-primary" style="background-color: red; color: white;">Edit</a>
                </div>

            </div>
        </div>
    </body>
</html>
