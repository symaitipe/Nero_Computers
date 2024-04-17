<%-- 
    Document   : brandSelection
    Created on : Apr 16, 2024, 9:26:37 PM
    Author     : Sahan Maitipe
--%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Brand" %>
<%@ page import="dao.BrandDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Select Brand</title>
</head>
<body>
    <h2>Select Brand for ${category}</h2>
    <form action="ViewBrandProductServlet" method="GET">
        <input type="hidden" name="category" value="${category}">
        <c:forEach var="brand" items="${brands}">
            <button type="submit" name="brand" value="${brand.name}">${brand.name}</button>
        </c:forEach>
    </form>
</body>
</html>
