<%-- 
    Document   : connection
    Created on : Oct 30, 2023, 12:05:57 PM
    Author     : PCS
--%>
<%@page import="java.sql.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_genarate","root","1234");
             out.println("connection success");
            %>
    </body>
</html>
