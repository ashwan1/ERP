<%-- 
    Document   : mybrandeditconfirm
    Created on : Sep 26, 2014, 11:07:18 PM
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
        String brandname=request.getParameter("txtBrandText").toString().trim();

        Connection connection=null;
        Statement statement=null;

        Class.forName("com.mysql.jdbc.Driver").newInstance();

        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

        statement=connection.createStatement();

        String sqlQuery="UPDATE brand SET BrandText='"+brandname+"' WHERE ID='"+id+"'";

        statement.executeUpdate(sqlQuery);

        statement.close();
        connection.close();

        response.sendRedirect("mybrandinsert.jsp");
        
        %>
    </body>
</html>
