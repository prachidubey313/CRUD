<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.example.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>List Users</title>
</head>
<body>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
           <%  List<User> listuser = (List<User>) request.getAttribute("listUser");
                //request.setAttribute("listUser", listUser);
           %>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="update.jsp?id=${user.id}">Update</a>
                        <a href="delete?id=${user.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>  
        </tbody>
         
        
       </table>
       
</body>
</html>
    