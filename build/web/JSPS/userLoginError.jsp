<%-- 
    Document   : error
    Created on : Apr 13, 2024, 12:22:48 AM
    Author     : Sahan Maitipe
--%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Required</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <!-- Modal -->
        <div class="modal fade" id="loginFailModal" tabindex="-1" aria-labelledby="loginFailModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="loginFailModalLabel">Login Failed</h5>
                    </div>
                    <div class="modal-body">
                       Incorrect User Name or Password
                    </div>
                    <div class="modal-footer">
                        <a href="/Nero_Computers/JSPS/login.jsp" class="btn btn-primary">Back To Login</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Script to show the modal -->
        <script>
            $(document).ready(function () {
                $('#loginFailModal').modal('show');
            });
        </script>
    </body>
</html>
