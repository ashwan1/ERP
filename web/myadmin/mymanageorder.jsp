<%-- 
    Document   : mymanageorder
    Created on : Oct 9, 2014, 11:41:41 AM
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
<%@page  import="java.io.*" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="main.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
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
                        <h2>Manage Product Order : </h2>
                    </div>
                    

<div>
                        <%
                        Connection connection=null;
                        Statement statement=null;

                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

                        statement=connection.createStatement();

                        String sqlQuery="SELECT * FROM OrderProduct ORDER BY Status ASC,ID DESC";

                        ResultSet rs=statement.executeQuery(sqlQuery);

                        %>
                        <table border="1" cellspacing="0">
                            <tr style="color: white; background-color:#0033cc;">
                                <th></th>
                                <th>Order ID</th>
                                <th>Product ID</th>
                                <th></th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Customer Name</th>
                                <th>Customer Contacts</th>
                                <th>Taken Status</th>
                                <th>Taken Employee ID</th>
                                <th>Status</th>
                                <th>Order DateTime</th>
                            </tr>
                        <%

                        while(rs.next())
                            {
                                String id=rs.getString(1);
                                String productid=rs.getString(2);
                                String price=rs.getString(3);
                                String quantity=rs.getString(4);
                                String customername=rs.getString(5);
                                String customercontacts=rs.getString(6);
                                String takenstatus=rs.getString(7);
                                String takenemployeeid=rs.getString(8);
                                String status=rs.getString(9);
                                Integer takenstatusint=rs.getInt(7);
                                String orderdatetime=rs.getString(10);

                                %>
                                <tr>
                                    <td>
                                        <%
                                            if(takenstatusint==1)
                                                {
                                                %>
                                        <a onclick="javascript:window.open('myorderstatusedit.jsp?ID=<%=id%>','','width=300px,height=300px');" href="javascript:void(0);">EDIT STATUS</a>
                                               <%
                                                }
                                         %>

                                    </td>
                                    <td><%=id%></td>
                                    <td><%=productid%></td>
                                    <td><img src="myproductpics/<%=productid%>.jpg" alt="" style="width: 60px; height: 60px;"/></td>
                                    <td><%=price%></td>
                                    <td><%=quantity%></td>
                                    <td><%=customername%></td>
                                    <td><%=customercontacts%></td>
                                    <td><%=takenstatus%></td>
                                    <td><%=takenemployeeid%></td>
                                    <td><%=status%></td>
                                    <td><%=orderdatetime%></td>
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
    </body>
</html>
