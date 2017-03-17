<%-- 
    Document   : myorderproductinsertconfirm
    Created on : Oct 9, 2014, 9:54:02 AM
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
            String productid=request.getParameter("txtProductID").toString().trim();
            String quantity=request.getParameter("txtQuantity").toString().trim();
            String customername=request.getParameter("txtCustomerName").toString().trim();
            String customercontacts=request.getParameter("txtCustomerContacts").trim();

            ///   get product current price

             Connection connection3=null;
            Statement statement3=null;

            String connectionstring3="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection3=DriverManager.getConnection(connectionstring3,"root","i472bmt");

            statement3=connection3.createStatement();

            String sqlQuery3="SELECT Price FROM Product WHERE ID='"+productid+"'";

            ResultSet rs3=statement3.executeQuery(sqlQuery3);

            rs3.next();

            String price=rs3.getString(1);

            statement3.close();
            connection3.close();


            ////   insert order

             Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="INSERT INTO OrderProduct(ProductID,Price,Quantity,CustomerName,CustomerContacts,TakenStatus,TakenEmployeeID,Status,OrderDateTime) VALUES('"+productid+"','"+price+"','"+quantity+"','"+customername+"','"+customercontacts+"','0','0','0',now())";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();



        %>
        <h1 style="color: green">ORDER TAKEN - SOON EMPLOYEE WILL CONTACT YOU</h1><br/>
        <input type="button" id="btn" name="btn" onclick="javascript:window.close();" value="       ok      "/>
    </body>
</html>
