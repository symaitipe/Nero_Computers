<%-- 
    Document   : confirmUserLogout
    Created on : Apr 19, 2024, 2:47:59 AM
    Author     : Sahan Maitipe
--%>

<<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Confirm Logout</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <div class="modal fade" id="loginAlertModal" tabindex="-1" aria-labelledby="loginAlertModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="loginAlertModalLabel">Login Required</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        You must log in first to perform this action.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary cancelBtn"  data-dismiss="modal">Close</button>
                        <a href="/Nero_Computers/JSPS/login.jsp" class="btn btn-primary">Login</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="logoutConfirmationModal" tabindex="-1" aria-labelledby="logoutConfirmationModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="logoutConfirmationModalLabel">Confirm Logout</h5>
                    </div>
                    <div class="modal-body">
                        Are you sure you want to log out?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary cancelBtn"  data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" id="confirmLogoutBtn">Logout</button>
                    </div>
                </div>
            </div>
        </div>


        <script>
            // Check if username is empty in localStorage
            var username = localStorage.getItem("username");
            if (!username) {
                $('#loginAlertModal').modal('show');
            } else {
                $('#logoutConfirmationModal').modal('show');

                $('#confirmLogoutBtn').click(function () {
                    localStorage.clear();
                    var form = document.createElement('form');
                    form.method = 'POST';
                    form.action = '/Nero_Computers/userLogoutServlet';
                    document.body.appendChild(form);
                    form.submit();
                });
            }

            // Handler for cancel button click
            $('.cancelBtn').click(function () {
                window.history.back();
            });

        </script>


    </body>
</html>