<%-- 
    Document   : mybrandinsertconfirm
    Created on : Sep 25, 2014, 2:26:10 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page  import="java.io.*" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String brandtext=request.getParameter("brandtxt").toString().trim();

            Connection connection=null;
            Statement statement=null;


            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="INSERT INTO brand(BrandText) VALUES ('"+brandtext+"')";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();

            response.sendRedirect("mybrandinsert.jsp");

        %>
    </body>
</html>
