<%-- 
    Document   : mytakeorderconfirm
    Created on : Oct 9, 2014, 10:54:42 AM
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
           String orderid=request.getParameter("orderid").toString().trim();
           String employeeid=session.getAttribute("EMPLOYEEID").toString().trim();

            Connection connection=null;
                        Statement statement=null;

                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

                        statement=connection.createStatement();

                        String sqlQuery="SELECT TakenStatus FROM OrderProduct WHERE ID='"+orderid+"'";

                        ResultSet rs=statement.executeQuery(sqlQuery);

                        rs.next();

                        Integer takenstatus=rs.getInt(1);

                        statement.close();
                        connection.close();

                        if(takenstatus==0)
                            {
                                Connection connection2=null;
                                Statement statement2=null;

                                String connectionstring2="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                                Class.forName("com.mysql.jdbc.Driver").newInstance();

                                connection2=DriverManager.getConnection(connectionstring2,"root","i472bmt");

                                statement2=connection2.createStatement();

                                String sqlQuery2="UPDATE OrderProduct SET TakenStatus=1,TakenEmployeeID='"+employeeid+"' WHERE ID='"+orderid+"'";

                                statement2.executeUpdate(sqlQuery2);

                                statement2.close();
                                connection2.close();


                                response.sendRedirect("myorderlist.jsp");
                            }
                        else
                            {
                               response.sendRedirect("myordermissed.jsp");
                            }


        %>
    </body>
</html>
