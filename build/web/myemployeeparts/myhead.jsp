<%-- 
    Document   : myhead
    Created on : Sep 24, 2014, 10:34:19 PM
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
        String employeeid=session.getAttribute("EMPLOYEEID").toString().trim();

         Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","pankaj");

            statement=connection.createStatement();

            String sqlQuery="SELECT employeename FROM Employee WHERE ID='"+employeeid+"'";

            ResultSet rs=statement.executeQuery(sqlQuery);

            rs.next();

            String employeename=rs.getString(1);

            statement.close();
            connection.close();

        %>
         <table style="width: 100%; height: 100%; color: #ABCDEF;
               text-align: center; font-size: 40px; font-family: Cooper;
               font-weight: bold; background-color: #330099; ">
            <tr>
                <td>
                      Employee section <br>
                      (WELCOME :<span style="background-color: #252525;"> <%=employeename%></span>)
                </td>
            </tr>
        </table>
    </body>
</html>
