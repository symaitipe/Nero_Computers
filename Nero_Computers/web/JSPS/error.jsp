<%-- 
    Document   : error
    Created on : Apr 13, 2024, 12:22:48 AM
    Author     : Sahan Maitipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    
    <%-- Print session data --%>
    <%-- Check if session exists --%>
    <c:if test="${not empty sessionScope.username}">
        <p>Username: ${sessionScope.username}</p>
    </c:if>
    <c:if test="${not empty sessionScope.userID}">
        <p>User ID: ${sessionScope.userID}</p>
    </c:if>
</body>
</html>
