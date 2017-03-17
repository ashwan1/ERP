<%-- 
    Document   : myproductinsertconfirm
    Created on : Sep 28, 2014, 2:09:56 PM
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
            String brandid=request.getParameter("ddlbrand").toString().trim();
            String categoryid=request.getParameter("ddlcategory").toString().trim();
            String productname=request.getParameter("productname").trim();
            String description=request.getParameter("txtarea").trim();
            String price=request.getParameter("price").trim();

            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="INSERT INTO Product(BrandID,CategoryID,ProductName,Description,Price,LaunchDateTime) VALUES('"+brandid+"','"+categoryid+"','"+productname+"','"+description+"','"+price+"',now())";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();

            response.sendRedirect("myproductinsert.jsp");
        %>
    </body>
</html>
