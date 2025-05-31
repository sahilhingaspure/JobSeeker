<%-- 
    Document   : UserView
    Created on : 17 Mar 2025, 6:45:20 pm
    Author     : ASUS
--%>

<%@page import="com.mycompany.jobseeker.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   </head>
    <body>
<h1> User List</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>UserName</th>
                    <th>gender</th>
                    <th>mobileno</th>
                    <th>City</th>
                    <th>education</th>
                    <th>filePath</th>
                     <th>Apply</th>

                </tr>
            </thead>
            <tbody>
                <% 
                    
                    List<User> users = (List<User>) request.getAttribute("user");

                    
                    if (users != null) {
                        for (User user : users) {
                %>
                <tr>
                    <td><%= user.getUsername()%></td>
                    <td><%= user.getGender()%></td>
                    <td><%= user.getMobileno()%></td>
                    <td><%= user.getCity()%></td>
                    <td><%= user.getEducation()%></td>
                    <td><%= user.getFilePath()%></td>
               <td><a href="userForm.html"> Apply for jobs</a></td>

                </tr>
                <%
                        }
                    } 
                %>    </body>
</html>
