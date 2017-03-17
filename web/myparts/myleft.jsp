<%-- 
    Document   : myleft
    Created on : Sep 24, 2014, 10:37:28 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*" %>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            a.link{
            width: 100%;
               color: white;
               background-color: #ee3333;
               display: block;
               text-decoration: none;
               border-bottom-style: inset;
               border-bottom-color: white;
               border-bottom-width: 1px;
               padding: 3px 0px 3px 3px;
               font-weight: bold;
               text-align: center;
            }

             a.link:hover
            {
                background-color: red;
               border-bottom-style: outset;
               width: 110%;
               text-decoration: underline;
            }

             a.BrandLink
            {
               width: 100%;
               color: white;
               background-color: #456550;
               display: block;
               text-decoration: none;
               border-bottom-style: inset;
               border-bottom-color: white;
               border-bottom-width: 3px;
               padding: 3px 0px 3px 3px;
               font-weight: bold;
               text-align: center;
               border-radius:10px;
               margin: 4px;

            }

             a.BrandLink:hover
            {
               background-color: #459596;
               border-bottom-style: outset;
               border-color: #222222;
            }

           
        </style>
    </head>
    <body>
        <table border="0" cellspacing="0" cellpadding="0" style="width:100%">
           <tr>
                <td>
                    <a href="index.jsp" class="link">Home</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="mymostordered.jsp" class="link">Most Ordered</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="myemployeelogin.jsp" class="link">Employee Login</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="adminlogin.jsp" class="link">Admin Login</a>
                </td>
            </tr>
           
            
        </table>
         <div style=" background-color: black; color: white; font-weight: bold; padding: 1px; margin-top: 15px;">
            Brands
        </div>
        <div>
                        <%
            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="SELECT * FROM Brand";

            ResultSet rs=statement.executeQuery(sqlQuery);



            while(rs.next())
                {
                     String id=rs.getString(1);
                     String brandtext=rs.getString(2);

                     %>
                     <a class="BrandLink" href="mybrandproducts.jsp?brandid=<%=id%>"><%=brandtext%></a>
                     <%

                }

            statement.close();
            connection.close();

        %>
                    </div>
    </body>
</html>
