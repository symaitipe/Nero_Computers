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
        <style>
           
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
            }
            
            .brand-container {
                max-width: 500px;
                margin: 0 auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            
            .brand-button {
                width: 100%;
                margin-bottom: 10px;
                padding: 10px 20px;
                font-size: 16px;
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .brand-button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container">
            <div class="brand-container">
                <h2 class="text-center mb-4">Select Brand for ${category}</h2>
                <form action="ViewBrandProductServlet" method="GET">
                    <input type="hidden" name="category" value="${category}">
                    <c:forEach var="brand" items="${brands}">
                        <button type="submit" class="btn btn-primary brand-button" name="brand" value="${brand.name}">${brand.name}</button>
                    </c:forEach>
                </form>
            </div>
        </div>
    </body>
</html>
