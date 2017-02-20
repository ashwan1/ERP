<%-- 
    Document   : myproductinsert
    Created on : Sep 28, 2014, 2:09:17 PM
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
        <link href="main.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <form id="frm1" name="frm1" action="myproductinsertconfirm.jsp" method="get">
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
                <td colspan="2" class="mybodysection"><h2>Manage product:</h2>
                    <div>
                        <table>
                            <tr>
                                <td>Brand</td>
                                <td>:</td>
                                <td>
                                    <select id="ddlbrand" name="ddlbrand">
                                        <option></option>
                                        <%
                                          Connection connection1=null;
                                          Statement statement1=null;

                                          Class.forName("com.mysql.jdbc.Driver");
                                          String connectionstring1="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                                          connection1=DriverManager.getConnection(connectionstring1,"root","pankaj");
                                          statement1=connection1.createStatement();

                                          String sqlQuery1="SELECT * FROM brand";

                                          ResultSet rs1=statement1.executeQuery(sqlQuery1);

                                          while(rs1.next())
                                              {
                                               String id1=rs1.getString(1);
                                             String brandname= rs1.getString(2);
                                        %>
                                        <option value="<%=id1%>"><%=brandname%></option>
                                        <%
                                        }

                                          statement1.close();
                                          connection1.close();
                                        %>
                                    </select>

                                </td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td>:</td>
                                <td>
                                    <select id="ddlcategory" name="ddlcategory">
                                        <option></option>
                                        <%
                                          Connection connection2=null;
                                          Statement statement2=null;

                                          Class.forName("com.mysql.jdbc.Driver");
                                          String connectionstring2="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                                          connection2=DriverManager.getConnection(connectionstring2,"root","pankaj");
                                          statement2=connection2.createStatement();

                                          String sqlQuery2="SELECT * FROM category";

                                          ResultSet rs2=statement2.executeQuery(sqlQuery2);

                                          while(rs2.next())
                                              {
                                               String id=rs2.getString(1);
                                             String category= rs2.getString(2);
                                        %>
                                        <option value="<%=id%>"><%=category%></option>
                                        <%
                                        }

                                          statement2.close();
                                          connection2.close();
                                        %>
                                    </select>

                                </td>
                            </tr>
                            <tr>
                                <td>Product Name</td>
                                <td>:</td>
                                <td><input type="text" id="productname" name="productname"/></td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td>:</td>
                                <td><input type="text" id="price" name="price"/></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>:</td>
                                <td>
                                    <textarea id="txtarea" name="txtarea" rows="5" cols="55"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td>
                                    <input type="submit" id="insert" name="insert" value="insert"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <%
                    Connection connection3=null;
                    Statement statement3=null;

                    Class.forName("com.mysql.jdbc.Driver");
                    String connectionstring3="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                    connection3=DriverManager.getConnection(connectionstring3,"root","pankaj");
                    statement3=connection3.createStatement();

                    String sqlQuery3="SELECT ID,BrandID,(SELECT Brand.BrandText FROM Brand WHERE Brand.ID=Product.BrandID) AS BRANDTEXT,CategoryID,(SELECT Category.CategoryText FROM Category WHERE Category.ID=Product.CategoryID) AS CATEGORYTEXT,ProductName,Description,Price,LaunchDateTime FROM Product";

                    ResultSet rs3=statement3.executeQuery(sqlQuery3);
                    %>
                    <div>
                        <table border="1" style="width: 97%">
                            <tr style="color:#3333ff; background-color: cyan; height: 35px">
                                <th></th>
                                <th></th>
                                <th></th>
                                <th>Product Image</th>
                                <th>ID</th>
                                <th>Brand ID</th>
                                <th>Brand Name</th>
                                <th>Category ID</th>
                                <th>Category</th>
                                <th>Product Name</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>Launch DateTime</th>
                            </tr>
                            <%
                            while(rs3.next())
                                {
                                  String id=rs3.getString(1);
                     String brandid=rs3.getString(2);
                     String brandname=rs3.getString(3);
                     String categoryid=rs3.getString(4);
                     String category=rs3.getString(5);
                     String productname=rs3.getString(6);
                     String description=rs3.getString(7);
                     String price=rs3.getString(8);
                     String launchdatetime=rs3.getString(9);
                            %>
                            <tr>
                                <td><a onclick="javascript:window.open('myproductpic.jsp?ID=<%=id%>','','width=250px,height=250px');" href="javascript:void(0);">add/edit pic</a></td>
                                <td><a href="myproductedit.jsp?ID=<%=id%>">Edit</a></td>
                                <td><a onclick="javascript:window.open('myproductdelete.jsp?ID=<%=id%>','','width=250px,height=250px');" href="javascript:void(0);">Delete</a></td>
                                <td><img src="myproductpics/<%=id%>.jpg" alt="" style="width: 80px; height: 80px;"/></td>
                                <td><%=id%></td>
                         <td><%=brandid%></td>
                         <td><%=brandname%></td>
                         <td><%=categoryid%></td>
                         <td><%=category%></td>
                         <td><%=productname%></td>
                         <td><%=description%></td>
                         <td><%=price%></td>
                         <td><%=launchdatetime%></td>
                            </tr>
                            <%
                            }
                         statement3.close();
                         connection3.close();
                         %>
                        </table>
                    </div>
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
        </form>
    </body>
</html>
