<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <form action="register" method="post">
        <label>Id: </label>
        <input type="text" name="id"><br>
        <label>Username: </label>
        <input type="text" name="username"><br>
        <label>Firstname: </label>
        <input type="text" name="firstname"><br>
        <label>Lastname: </label>
        <input type="text" name="lastname"><br>
        <label>Password: </label>
        <input type="password" name="password"><br>
        <label>Email: </label>
        <input type="email" name="email"><br>
        <label>Address: </label>
        <input type="text" name="address"><br>
        <label>Contact No.: </label>
        <input type="text" name="contact no."><br>
        <input type="submit" value="New User">
    </form>
</body>
</html>
    