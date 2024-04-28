<%-- 
    Document   : cartView
    Created on : Apr 23, 2024, 10:51:22 PM
    Author     : Sahan Maitipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart view</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <% if (session.getAttribute("username") == null || session.getAttribute("userID") == null) { %>
        <!-- Empty Cart Modal -->
        <div class="modal fade" id="emptyCartModal" tabindex="-1" role="dialog" aria-labelledby="emptyCartModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="emptyCartModalLabel">Your Cart is Empty</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Your shopping cart is currently empty. Please continue shopping to add items to your cart.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#emptyCartModal').modal('show');
            });
        </script>
        <% } else {%>
        <form id="cartForm" action="/Nero_Computers/viewCartServlet" method="POST">
            <input type="hidden" name="username" value="<%= session.getAttribute("username")%>">
            <input type="hidden" name="userID" value="<%= session.getAttribute("userID")%>">           
        </form>  

        <script>
               
            document.addEventListener("DOMContentLoaded", function () {
                document.getElementById("cartForm").submit();
            });
        </script>
        <% }%>
    </body>
</html>
