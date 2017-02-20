<%-- 
    Document   : mycategoryeditconfirm
    Created on : Sep 27, 2014, 12:02:46 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("txtID").toString().trim();
        String category=request.getParameter("cattxt").toString().trim();

        Connection connection=null;
        Statement statement=null;

        Class.forName("com.mysql.jdbc.Driver").newInstance();

        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

        connection=DriverManager.getConnection(connectionstring,"root","pankaj");

        statement=connection.createStatement();

        String sqlQuery="UPDATE category SET CategoryText='"+category+"' WHERE ID='"+id+"'";

        statement.executeUpdate(sqlQuery);

        statement.close();
        connection.close();

        response.sendRedirect("mycategoryinsert.jsp");

        %>
    </body>
</html>

