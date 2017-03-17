<%-- 
    Document   : myproductdetail
    Created on : Oct 6, 2014, 11:16:49 PM
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
        <link type="text/css" href="main.css" rel="StyleSheet"/>
    </head>
    <body>
        <table class="myprojectlayout" align="center" border="0" cellspacing="0" cellpadding="0">
            <tr class="myheadersection">
                <td colspan="3">
                    <jsp:include page="myparts/myhead.jsp">
                        <jsp:param name="head" value="head"></jsp:param>
                    </jsp:include>
                </td>
            </tr>
            <tr class="mymiddlesection">
                <td class="myleftsection">
                    <jsp:include page="myparts/myleft.jsp">
                        <jsp:param name="left" value="left"></jsp:param>
                    </jsp:include>
                </td>
                <td class="mybodysection">
                    <div>
                                     <%
                    String productid=request.getParameter("ID").toString();

            Connection connection3=null;
            Statement statement3=null;

            String connectionstring3="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection3=DriverManager.getConnection(connectionstring3,"root","i472bmt");

            statement3=connection3.createStatement();

            String sqlQuery3="SELECT ID,BrandID,(SELECT Brand.BrandText FROM Brand WHERE Brand.ID=Product.BrandID) AS BRANDTEXT,CategoryID,(SELECT Category.CategoryText FROM Category WHERE Category.ID=Product.CategoryID) AS CATEGORYTEXT,ProductName,Description,Price,LaunchDateTime FROM Product WHERE ID='"+productid+"'";

            ResultSet rs3=statement3.executeQuery(sqlQuery3);



           rs3.next();

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
                     <div>
                         <table cellspacing="10px" style="width: 300px;">
                             <tr>
                                 <td style=" vertical-align: top;">
                                     <img src="myadmin/myproductpics/<%=id%>.jpg" alt="<%=productname%>"
                                           style="width: 300px; "/>
                                 </td>
                                 <td style=" vertical-align: top;">
                                     <h2>
                                         <%=productname%>
                                     </h2>
                                     <div>
                                         <table style="width:100%;">
                                             <tr>
                                                 <td>Brand</td>
                                                 <td>:</td>
                                                 <td><%=brandtext%></td>
                                             </tr>
                                             <tr>
                                                 <td>Category</td>
                                                 <td>:</td>
                                                 <td><%=categorytext%></td>
                                             </tr>
                                             <tr>
                                                 <td>Price</td>
                                                 <td>:</td>
                                                 <td style="color:green; font-weight: bold;"><%=price%></td>
                                             </tr>
                                         </table>
                                     </div>
                                             <div>
                                                 <table style="width:100%; font-size: 11px; color:gray;">
                                                     <tr>
                                                         <td>Launched On : </td>
                                                         <td><%=launchdatetime%></td>
                                                     </tr>
                                                 </table>

                                             </div>
                                                     <div>
                                                         <h3><a style="color:maroon;" href="javascript:void(0);" onclick="javascript:window.open('myorderproductinsert.jsp?productid=<%=productid%>','','width=500px,height=380px');">ORDER IT</a></h3>
                                                     </div>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     <fieldset>
                                         <legend style="color:#3333ff">Description</legend>
                                         <%=description%>
                                     </fieldset>
                                 </td>
                             </tr>
                         </table>
                     </div>
                     <%

            statement3.close();
            connection3.close();

        %>
                                    </div>

                </td>
                <td class="myrightsection">
                    <jsp:include page="myparts/myright.jsp">
                        <jsp:param name="right" value="right"></jsp:param>
                    </jsp:include>
                </td>
            </tr>
            <tr class="myfootersection">
                <td colspan="3">
                    <jsp:include page="myparts/myfooter.jsp">
                        <jsp:param name="footer" value="footer"></jsp:param>
                    </jsp:include>
                </td>
            </tr>
        </table>
    </body>
</html>

