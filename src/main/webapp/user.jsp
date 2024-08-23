<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.example.User"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
    <style>
    .top-right {
            position: absolute;
            top: 20px;
            right: 20px;
            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>
 <% 
User user=(User)  request.getAttribute("user");
request.setAttribute("user", user);
%>
     <div class="container mt-4">
        <h2 class="mb-3">User List</h2>
        <div class="top-right">
            <a class="btn btn-success" href="register.jsp">New User</a>
            <a class="btn btn-info" href="info?id=${user.id}">Info</a>
        </div>
         
    </div>
        <table class="table table-bordered">
            <thead class="thead-dark">
            
            
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%  List<User> listUser = (List<User>) request.getAttribute("listUser"); %>
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="update.jsp?id=${user.id}">Update</a>
                            <a class="btn btn-danger btn-sm" href="delete?id=${user.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>  
            </tbody>
        </table>
        
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
