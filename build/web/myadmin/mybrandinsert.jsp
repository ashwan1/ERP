<%-- 
    Document   : mybrandinsert
    Created on : Sep 25, 2014, 2:25:36 PM
    Author     : intel
--%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="main.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <form id="form1" name="form1" action="mybrandinsertconfirm.jsp" method="get">
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
                <td colspan="2" class="mybodysection"><h2>Manage Brands:</h2>
                    <div>
                        <table>
                            <tr>
                                <td>Brand</td>
                                <td>:</td>
                                <td><input type="text" name="brandtxt" id="brandtxt"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" name="sub1" id="sub1" value="Insert"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <%
                        Connection connection=null;
                        Statement statement=null;

                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";
                        
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        
                        connection=DriverManager.getConnection(connectionstring,"root","pankaj");
                        
                        statement=connection.createStatement();
                        
                        String sqlQuery="SELECT * FROM brand";
                        
                        ResultSet rs=statement.executeQuery(sqlQuery);
                        
                        %>


                        <table border="1" style="width: 270px">
                            <tr>
                                <th></th>
                                <th></th>
                                <th>ID</th>
                                <th>Brand</th>
                            </tr>

                                <%
                                    while(rs.next())
                                        {
                                           String id=rs.getString(1);
                                           String brandtext=rs.getString(2);


                                %>

                                <tr>
                                    <td><a href="javascript:void(0);" onclick="javascript:window.open('mybranddelete.jsp?ID=<%=id%>','','width=400px,height=400px');">Delete</a></td>
                                    <td><a href="mybrandedit.jsp?ID=<%=id%>">Edit</a></td>
                                    <td><%=id%></td>
                                    <td><%=brandtext%></td>
                                </tr>
                                <%
                                }
                        statement.close();
                        connection.close();
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
