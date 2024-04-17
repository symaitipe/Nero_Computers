<%-- 
    Document   : order
    Created on : 11-Apr-2024, 13:33:06
    Author     : mphfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
        table {
            border-collapse: collapse;
            width: 100%; 
        }
        td {
            border: 1px solid black;
            padding: 8px; 
            text-align: center; 
        }
        .total-price {
            text-align: left; 
        }
    </style>
    <script>
           function validateForm() {
            var email = document.forms["myForm"]["email"].value;
            var contactno = document.forms["myForm"]["contactno"].value;

           
            if (email === "") {
                alert("Email must be filled out");
                return false;
            }
           
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                alert("Invalid email format");
                return false;
            }

            
            if (contactno === "") {
                alert("Contact number must be filled out");
                return false;
            }
           
            var contactRegex = /^\d{10}$/;
            if (!contactRegex.test(contactno)) {
                alert("Invalid contact number format. Please enter 10 digits.");
                return false;
            }

            return true;
        }
    </script>
        </script>
    </head>
   <body>
    <center>
        <h2>Purchase Order</h2>
        <table border="1">
            <tr><td>Items</td>
                <td>Quantity</td>
                <td>Price</td>
            </tr><tr>
                <td>Item  1</td>
                <td>1</td>
                <td>200</td>
            </tr>
            <tr>
                <td>Item 2</td>
                <td>2</td>
                <td>300</td>
            </tr>
            <tr>
                <td>Item 3</td>
                <td>3</td>
                <td>400</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                 <td class="total-price">Total Price</td>
            </tr>
        </table>
        <form action="" method="POST" name="myForm" onsubmit="return validateForm()">
          
            <table border="1">
                <tbody>
                    <tr>
                        <td>Name:</td>
                        <td><input type='text' name="uname" value=""/></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><input type='text' name="add" value=""/></td>
                    </tr>
                    <tr>
                        <td>Email :</td>
                        <td><input type='text' name="email" value=""/></td>
                    </tr>
                      <tr>
                        <td>Contact number :</td>
                        <td><input type='text' name="contactno" value=""/></td>
                    </tr>
                    
                    <tr>
                        
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="Submit" value="Confirm Purchase" /></td>
                    </tr>
                </tbody>
            </table>
           
        </form>
    </center>
    </body>
</html>
