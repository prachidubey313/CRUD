<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.example.UserDao"%>
<%@page import="com.example.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>
     
<body>
    <div class="form-container">
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User existingUser = userDao.selectUser(id);
    %>
    <form action="update" method="post">
         <div class="form-group">
        <label>Id: </label>
        <input type="text" name="id" value="<%= existingUser.getId() %>"><br><br>
         <div class="form-group">
        <label>Username: </label>
        <input type="text" name="username" value="<%= existingUser.getUsername() %>"><br><br>
         <div class="form-group">
        <label>Password: </label>
        <input type="password" name="password" value="<%= existingUser.getPassword() %>"><br><br>
         <div class="form-group">
        <label>Email: </label>
        <input type="email" name="email" value="<%= existingUser.getEmail() %>"><br><br>
        
        <button type="submit" value="Update" class="btn"> Update </button>
    </form>
</body>
</html>
 
</body>
</html>