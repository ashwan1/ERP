<%-- 
    Document   : myemployeesearch
    Created on : Oct 3, 2014, 12:17:27 PM
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
        String loginid=request.getParameter("loginid").toString().trim();
        String password=request.getParameter("password").toString().trim();

        Connection connection=null;
        Statement statement=null;

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");
        statement=connection.createStatement();

        String sqlQuery="SELECT COUNT(*) FROM employee WHERE LoginID='"+loginid+"'AND PASSWORD='"+password+"'";

        ResultSet rs=statement.executeQuery(sqlQuery);

        rs.next();
         Integer count=rs.getInt(1);

         if(count==0)
             {
                response.sendRedirect("myemployeelogin.jsp?error=1");
             }
         else
             {
                response.sendRedirect("myemployeecreatesession.jsp?loginid="+loginid+"&password="+password);
             }
        %>
    </body>
</html>
