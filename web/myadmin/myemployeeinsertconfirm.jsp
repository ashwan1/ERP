<%-- 
    Document   : myemployeeinsertconfirm
    Created on : Oct 1, 2014, 11:00:55 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String ename=request.getParameter("txtename");
        String loginid=request.getParameter("txtloginid");
        String password=request.getParameter("txtpassword");

        Connection connection =null;
        Statement statement=null;

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");
        statement=connection.createStatement();

        String sqlQuery="INSERT INTO employee(EmployeeName,LoginID,Password) VALUES ('"+ename+"','"+loginid+"','"+password+"')";
        statement.executeUpdate(sqlQuery);

        statement.close();
        connection.close();

        response.sendRedirect("myemployeeinsert.jsp");
        %>
    </body>
</html>
