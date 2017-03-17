<%-- 
    Document   : mysearchproducts
    Created on : Oct 9, 2014, 12:29:14 PM
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
                     <%
                       String searchtext=request.getParameter("searchtext").trim();
                    %>
                    <h1 style="font-family: Freestyle Script; font-size: 50px; margin-left: 10px; color: blueviolet">
                        Results for <%=searchtext%>...</h1>
                        <div>
                      <%
            Connection connection3=null;
            Statement statement3=null;

            String connectionstring3="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection3=DriverManager.getConnection(connectionstring3,"root","i472bmt");

            statement3=connection3.createStatement();

            String sqlQuery3="SELECT ID,BrandID,(SELECT Brand.BrandText FROM Brand WHERE Brand.ID=Product.BrandID) AS BRANDTEXT,CategoryID,(SELECT Category.CategoryText FROM Category WHERE Category.ID=Product.CategoryID) AS CATEGORYTEXT,ProductName,Description,Price,LaunchDateTime FROM Product WHERE ProductName LIKE '%"+searchtext+"%' OR Description LIKE '%"+searchtext+"%'";

            ResultSet rs3=statement3.executeQuery(sqlQuery3);

             if(rs3.next()==false)
               {
                      %>
                      <div style="position:relative; top:30px; left: 0px; background-color: grey; text-align: center;
                           width: 76%; height: 170px; padding-top: 20px; overflow: auto;">
                          <span style="color:red; font-size: 35px; font-family: Candara;">Sorry!!<br/>no results found<br/>
                              Try with some different keyword</span>
                      </div>
                      <%
           }
           rs3.beforeFirst();
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
                     <div style="float:left; width: 120px; height: 130px; text-align: center;
                          border-style: solid; margin: 10px; border-color: #DDDDDD;">
                         <table align="center">
                             <tr>
                                 <td>
                                     <a target="_blank" href="myproductdetail.jsp?ID=<%=id%>">
                                         <img src="myadmin/myproductpics/<%=id%>.jpg" alt="" style="width: 90px; height: 90px;"/>
                                     </a>

                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                      <a target="_blank" href="myproductdetail.jsp?ID=<%=id%>" style=" text-decoration: none; color:#854555;">
                                                    <%=productname%>
                                      </a>
                                 </td>
                             </tr>
                         </table>
                     </div>
                     <%
                     }
                    
            statement3.close();
            connection3.close();

        %>
                                    </div>

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
