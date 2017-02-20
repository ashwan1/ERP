<%-- 
    Document   : myproductedit
    Created on : Sep 29, 2014, 12:14:17 AM
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
        <form id="form1" name="form1" action="myproducteditconfirm.jsp" method="get">
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
                <td colspan="2" class="mybodysection">
                    <div>
                        <h2>Edit product details:</h2>
                    <%
                    String productid=request.getParameter("ID").trim();
                    %>
                    </div>
                    <div>
                        <%
                        Connection connection=null;
                        Statement statement=null;

                        Class.forName("com.mysql.jdbc.Driver");
                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                        connection=DriverManager.getConnection(connectionstring,"root","pankaj");
                        statement=connection.createStatement();

                        String sqlQuery="SELECT ID,BrandID,(SELECT Brand.BrandText FROM Brand WHERE Brand.ID=Product.BrandID) AS BRANDTEXT,CategoryID,(SELECT Category.CategoryText FROM Category WHERE Category.ID=Product.CategoryID) AS CATEGORYTEXT,ProductName,Description,Price,LaunchDateTime FROM product WHERE ID='"+productid+"'";

                      ResultSet rs=statement.executeQuery(sqlQuery);

                         rs.next();

                     String brandid=rs.getString(2);
                     Integer brandidint=rs.getInt(2);
                     String categoryid=rs.getString(4);
                     Integer categoryidint=rs.getInt(4);
                     String productname=rs.getString(6);
                     String description=rs.getString(7);
                     String price=rs.getString(8);
                     String launchdatetime=rs.getString(9);

            statement.close();
            connection.close();

                        %>
                    </div>
                    <div>
                          <table>
                              <tr   style="display: none;">
                                <td>ID</td>
                                <td>:</td>
                                <td>
                                    <input value="<%=productid%>" type="text" id="txtID" name="txtID"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Brand</td>
                                <td>:</td>
                                <td>
                                    <select id="ddlBrand" name="ddlBrand">
                                        <option></option>
                                        <%
                                        Connection connection1=null;
                                        Statement statement1=null;

                                        String connectionstring1="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                                        connection=DriverManager.getConnection(connectionstring,"root","pankaj");

                                        statement=connection.createStatement();

                                        String sqlQuery1="SELECT * FROM brand";

                                        ResultSet rs1=statement.executeQuery(sqlQuery1);



                                        while(rs1.next())
                                            {
                                                 String id=rs1.getString(1);
                                                 Integer idint=rs1.getInt(1);
                                                 String brandtext=rs1.getString(2);

                                                 if(brandidint==idint)
                                                     {
                                                        %>
                                                 <option selected="selected" value="<%=id%>"><%=brandtext%></option>
                                                 <%
                                                     }
                                                 else
                                                     {
                                                     %>
                                                 <option value="<%=id%>"><%=brandtext%></option>
                                                 <%
                                                     }



                                            }

                                        statement.close();
                                        connection.close();

                                    %>
                                    </select>
                                </td>
                            </tr>
                             <tr>
                                <td>Category</td>
                                <td>:</td>
                                <td>
                                    <select id="ddlCategory" name="ddlCategory">
                                        <option></option>
                                        <%
                                        Connection connection2=null;
                                        Statement statement2=null;

                                        String connectionstring2="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                                        connection2=DriverManager.getConnection(connectionstring2,"root","pankaj");

                                        statement2=connection2.createStatement();

                                        String sqlQuery2="SELECT * FROM category";

                                        ResultSet rs2=statement2.executeQuery(sqlQuery2);



                                        while(rs2.next())
                                            {
                                                 String id=rs2.getString(1);
                                                 Integer idint=rs2.getInt(1);
                                                 String categorytext=rs2.getString(2);

                                                 if(categoryidint==idint)
                                                     {
                                                      %>
                                                 <option selected="selected" value="<%=id%>"><%=categorytext%></option>
                                                 <%
                                                     }
                                                 else
                                                     {
                                                      %>
                                                 <option value="<%=id%>"><%=categorytext%></option>
                                                 <%
                                                     }



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
                                <td>
                                    <input value="<%=productname%>" type="text" id="txtProductName" name="txtProductName"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td>:</td>
                                <td>
                                    <input value="<%=price%>" type="text" id="txtPrice" name="txtPrice"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>:</td>
                                <td>
                                    <textarea id="txtDescription" name="txtDescription" rows="5" cols="55"><%=description%></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td>
                                    <input type="submit" id="sub1" name="sub1" value="Update"/>
                                </td>
                            </tr>
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

