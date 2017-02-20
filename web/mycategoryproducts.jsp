<%-- 
    Document   : mycategoryproducts
    Created on : Oct 8, 2014, 11:49:18 PM
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
        <link href="main.css" type="text/css" rel="stylesheet"/>
        <style type="text/css" >
            .dec
            {
                float:left;
                width: 22%;
                height: 155px;
                text-align: center;
                border-style: solid;
                margin: 10px;
                border-color: #DDDDDD;
                background-color:white;

            }

            .dec:hover
            {
                background-color: #ffff00;
                border-color: #ff0000;

            }
        </style>
    </head>
    <body style="background-color:#bbbbbb">
        <table border="0" align="center" class="myprojectlayout" cellpadding="0" cellspacing="0">
            <tr class="myheadersection">
                <td colspan="3">
                     <jsp:include page="myparts/myhead.jsp">
                        <jsp:param name="myhead" value="myhead"></jsp:param>
                    </jsp:include>
                </td>

            </tr>
            <tr class="mymiddlesection">
                <td class="myleftsection">
                    <jsp:include page="myparts/myleft.jsp">
                        <jsp:param name="myleft" value="myleft"></jsp:param>
                    </jsp:include>
                </td>
                <td class="mybodysection" style="background-color:#dddddd">
                    <div>
                        <%
                        String categoryidurl=request.getParameter("categoryid");

                        Connection connection0=null;
                        Statement statement0=null;

                        Class.forName("com.mysql.jdbc.Driver").newInstance();


                         connection0=DriverManager.getConnection("jdbc:mysql://localhost:3306/myemployeeperformanceerp","root","pankaj");
                         statement0=connection0.createStatement();

                         String sqlQuery0="SELECT * FROM Category WHERE ID='"+categoryidurl+"'";

                         ResultSet rs0=statement0.executeQuery(sqlQuery0);
                         rs0.next();

                         String category=rs0.getString(2);
                         statement0.close();
                         connection0.close();
                        %>
                    <h1 style="font-family: Freestyle Script; font-size: 50px; margin-left: 10px; color: blueviolet">
                        <%=category%></h1>
                    </div>
                    <%

                    Connection connection=null;
                    Statement statement=null;

                    Class.forName("com.mysql.jdbc.Driver").newInstance();


                    connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/myemployeeperformanceerp","root","pankaj");

                    statement=connection.createStatement();

                    String sqlQuery="SELECT ID,BrandID,(SELECT Brand.BrandText FROM Brand WHERE Brand.ID=Product.BrandID) AS BRANDTEXT,CategoryID,(SELECT Category.CategoryText FROM Category WHERE Category.ID=Product.CategoryID) AS CATEGORYTEXT,ProductName,Description,Price,LaunchDateTime FROM Product WHERE CategoryID='"+categoryidurl+"'";
                     ResultSet rs3=statement.executeQuery(sqlQuery);

                      while(rs3.next())
                {
                     String id=rs3.getString(1);
                     String brandid=rs3.getString(2);
                     String brandtext=rs3.getString(3);
                     String categoryid=rs3.getString(4);
                     String categorytext=rs3.getString(5);
                     String productname=rs3.getString(6);
                     String description=rs3.getString(7);
                     String price=rs3.getString(8);
                     String launchdatetime=rs3.getString(9);

                     %>
                      <div class="dec" >
                         <table align="center">
                             <tr>
                                 <td>
                                     <a target="_blank" href="myproductdetail.jsp?ID=<%=id%>" >
                                         <img src="myadmin/myproductpics/<%=id%>.jpg" title="<%=description%>" alt="<%=description%>" style="width: 98%; height: 120px;"/>
                                     </a>

                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                      <a target="_blank" href="myproductdetail.jsp?ID=<%=id%>"  style=" text-decoration: none; color:#854555;">
                                                    <%=productname%>
                                      </a>
                                 </td>
                             </tr>
                         </table>
                     </div>

                    <%
                    }

                     statement.close();
                     connection.close();
                    %>
                </td>
                <td class="myrightsection">
                    <jsp:include page="myparts/myright.jsp">
                        <jsp:param name="myright" value="myright"></jsp:param>
                    </jsp:include>
                </td>
            </tr>
            <tr class="myfootersection">
                <td colspan="3">
                    <jsp:include page="myparts/myfooter.jsp">
                        <jsp:param name="myfooter" value="myfooter"></jsp:param>
                    </jsp:include>
                </td>

            </tr>
        </table>
    </body>
</html>

