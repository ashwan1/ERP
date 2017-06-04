<%-- 
    Document   : mycategoryinsert
    Created on : Sep 27, 2014, 10:50:28 AM
    Author     : intel
--%>
<%
    String verified = "";
    verified = (String)session.getAttribute("verified");
    try{
        if(!verified.equalsIgnoreCase("yes")){
            response.sendRedirect("../adminlogin.jsp");
            }
        }
    catch(Exception e){
        response.sendRedirect("../adminlogin.jsp");
    }
%>
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
        <form id="frm1" name="frm1" action="mycategoryinsertconfirm.jsp" method="get">
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
                <td colspan="2" class="mybodysection"><h2>Manage Category:</h2>
                    <div>
                        <table>
                            <tr>
                                <td>Category</td>
                                <td>:</td>
                                <td><input type="text" id="cattxt" name="cattxt"/></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" id="butt1" name="butt1" value="insert"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                    <%
                       Statement statement=null;
                       Connection connection=null;

                       Class.forName("com.mysql.jdbc.Driver").newInstance();
                       String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                       connection=DriverManager.getConnection(connectionstring,"root","i472bmt");
                       statement=connection.createStatement();

                       String sqlQuery="SELECT * FROM Category";

                       ResultSet rs=statement.executeQuery(sqlQuery);

                    %>
                   
                        <table border="1" style="width: 270px">
                            <tr>
                                <td></td>
                                <td></td>
                                <th>ID</th>
                                <th>Category</th>
                            </tr>
                            <%
                            while(rs.next())
                                {
                            String id=rs.getString(1);
                            String category=rs.getString(2);

                            %>
                            <tr>
                                <td><a href="javascript:void(0);" onclick="javascript:window.open('mycategorydelete.jsp?ID=<%=id%>','','width=400px,height=400px');">Delete</a></td>
                                <td><a href="mycategoryedit.jsp?ID=<%=id%>">Edit</a></td>
                                <td><%=id%></td>
                                <td><%=category%></td>
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

