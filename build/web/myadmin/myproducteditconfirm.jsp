<%-- 
    Document   : myproducteditconfirm
    Created on : Sep 29, 2014, 12:15:27 AM
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
            String id=request.getParameter("txtID").toString().trim();
            String brandid=request.getParameter("ddlBrand").toString().trim();
            String categoryid=request.getParameter("ddlCategory").toString().trim();
            String productname=request.getParameter("txtProductName").trim();
            String description=request.getParameter("txtDescription").trim();
            String price=request.getParameter("txtPrice").trim();

            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="UPDATE product SET BrandID='"+brandid+"',CategoryID='"+categoryid+"',ProductName='"+productname+"',Description='"+description+"',Price='"+price+"' WHERE ID='"+id+"'";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();

            response.sendRedirect("myproductinsert.jsp");
        %>
    </body>
</html>
