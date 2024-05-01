<%-- 
    Document   : userSignupAlert
    Created on : Apr 20, 2024, 1:47:30 AM
    Author     : Sahan Maitipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create status</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        
        <!-- Success modal -->
        <div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="successModalLabel">Success</h5>
                    </div>
                    <div class="modal-body">
                        <!-- Success message here -->
                        <%= request.getAttribute("successMessage")%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="homeBtn">Home</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="loginBtn">Login</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Error modal -->
        <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="errorModalLabel">Error</h5>
                    </div>
                    <div class="modal-body">
                        <!-- Error message here -->
                        <%= request.getAttribute("errorMessage")%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="signUpBtn">Back To Sign Up</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var successMessage = "<%= request.getAttribute("successMessage")%>";
                var errorMessage = "<%= request.getAttribute("errorMessage")%>";

                if (successMessage != "null") {
                    $('#successModal').modal('show');
                    console.log(successMessage);
                }else if (errorMessage != "null") {
                    $('#errorModal').modal('show');
                    console.log(errorMessage);

                }

                homeBtn.addEventListener("click", function () {
                    window.location.href = '/Nero_Computers/index.html';
                });

                loginBtn.addEventListener("click", function () {
                    window.location.href = '/Nero_Computers/JSPS/userLogin.jsp';
                });
                signUpBtn.addEventListener("click", function () {
                    window.location.href = '/Nero_Computers/JSPS/userSignup.jsp';
                });
            });
        </script>
        
    </body>
</html>
