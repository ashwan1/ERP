<%-- 
    Document   : mycategoryinsertconfirm
    Created on : Sep 27, 2014, 10:50:57 AM
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
       String category=request.getParameter("cattxt").toString().trim();

       Connection connection=null;
       Statement statement=null;

       Class.forName("com.mysql.jdbc.Driver");
       String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

       connection=DriverManager.getConnection(connectionstring,"root","i472bmt");
       statement=connection.createStatement();

       String sqlQuery="INSERT INTO Category(CategoryText) VALUES ('"+category+"')";

       statement.executeUpdate(sqlQuery);

       statement.close();
       connection.close();

       response.sendRedirect("mycategoryinsert.jsp");
       %>
    </body>
</html>
