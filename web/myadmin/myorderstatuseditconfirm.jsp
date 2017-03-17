<%-- 
    Document   : myorderstatuseditconfirm
    Created on : Oct 9, 2014, 11:52:50 AM
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
        <title></title>
    </head>
    <body>
        <%
            String id=request.getParameter("txtID").toString().trim();
            String status=request.getParameter("ddlStatus").toString().trim();

            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="UPDATE OrderProduct SET status='"+status+"' WHERE ID='"+id+"'";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();

        %>
        <h2>ORDER STATUS UPDATED</h2><br/>
        <input type="button" onclick="javascript:window.close();" value="ok" style="width: 60px"/>
