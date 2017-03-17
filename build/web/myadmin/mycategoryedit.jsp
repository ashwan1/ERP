<%-- 
    Document   : mycategoryedit
    Created on : Sep 27, 2014, 12:02:21 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="main.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <form name="form1" id="form1" action="mycategoryeditconfirm.jsp" method="get">
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
                <td colspan="2" class="mybodysection"><h2>Update category:</h2>
                    <div>
                        <%
                        String id=request.getParameter("ID").toString().trim();

                        Connection connection=null;
                        Statement statement=null;

                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

                        statement=connection.createStatement();

                        String sqlQuery="SELECT * FROM category WHERE ID='"+id+"'";

                        ResultSet rs=statement.executeQuery(sqlQuery);

                        rs.next();

                        String category=rs.getString(2);

                        statement.close();
                        connection.close();

                        %>

                          <table>
                            <tr style="display: none;">
                                <td>ID</td>
                                <td>:</td>
                                <td>
                                    <input value="<%=id%>" type="text" id="txtID" name="txtID"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Brand Text</td>
                                <td>:</td>
                                <td>
                                    <input value="<%=category%>" type="text" id="cattxt" name="cattxt"/>
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

