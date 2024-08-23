package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        UserDao userdao=new UserDao();
        
        

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_db", "root", "root");
            if (userdao.validate(username, password)) {
            
              User user= userdao.selectUserByUsername(username);
            	request.setAttribute("user", user);
            	System.out.println(user);
            	RequestDispatcher dispatch = request.getRequestDispatcher("user.jsp");
               dispatch.forward(request, response);
               
            } else {
                response.setContentType("text/html");
                response.getWriter().println("<script type=\"text/javascript\">");
                response.getWriter().println("alert('Invalid Username or Password');");
                response.getWriter().println("location='login.jsp';");
                response.getWriter().println("</script>");
            }
             
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
