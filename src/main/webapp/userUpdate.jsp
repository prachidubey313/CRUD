<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1> Updated Data </h1>
 <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                
            </tr>
        </thead>
        <tbody>
           <%  User user  = (User) request.getAttribute("listuser");
                //request.setAttribute("listUser", listUser);
           %>
           
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                   
                </tr>
        </tbody>
           
    </table>
</body>
</html>