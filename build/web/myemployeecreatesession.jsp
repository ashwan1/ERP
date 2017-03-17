<%-- 
    Document   : myemployeecreatesession
    Created on : Oct 3, 2014, 12:43:48 PM
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

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="SELECT ID FROM employee WHERE LoginID='"+loginid+"' AND Password='"+password+"'";

            ResultSet rs=statement.executeQuery(sqlQuery);

            rs.next();

            String employeeid=rs.getString(1);

            session.setAttribute("EMPLOYEEID",employeeid);

            statement.close();
            connection.close();

            response.sendRedirect("myemployeeacount.jsp");

        %>
    </body>
</html>
