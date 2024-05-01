<%-- 
    Document   : Admin_Addbrands
    Created on : May 1, 2024, 6:15:46 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Brand</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color:lightgray;
            }

            .add-product-form {
                width: 600px;
                margin: 100px auto;
                padding: 20px;
                border: 1px solid black;
                border-radius: 10px;
            }

            .add-product-form h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            .add-product-form label {
                display: block;
                margin-bottom: 5px;
            }

            .add-product-form input[type="text"],
            .add-product-form input[type="url"],
            .add-product-form textarea {
                width: 100%;
                padding: 10px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 15px;
            }

            .add-product-form select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 15px;
            }

            .add-product-form button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .add-product-form button:hover {
                background-color: #3e8e41;
            }
        </style>
    </head>
    <body>
        <div class="add-product-form">
            <h2>Add New Brand</h2>
            <form action="/action_page.php">
                <label for="Brand">Brand Name:</label>
                <input type="text" id="brand" name="brand">


                <button type="submit">Add</button>
                <button type="button" onclick="window.location.href = 'cancel.html'">Cancel</button>
            </form>
        </div>

    </body>
</html>