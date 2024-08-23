<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="com.example.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info</title>
 <link rel="stylesheet" type="text/css" href="info.css">
</head>
<body>
     <table border="1">
        <thead>
            <tr>
                
                <th>Username</th>
               
                
            </tr>
        </thead>
        <tbody>
           <% User user = (User) request.getAttribute("user");
                //request.setAttribute("listUser", listUser);
           %>
            
                <tr>

                    <td>${user.username}</td>
                    
                   
                </tr>
            
        </tbody>
         
        
       </table>
       
</body>
</html>