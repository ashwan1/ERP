<%-- 
    Document   : myorderlist
    Created on : Oct 9, 2014, 10:36:19 AM
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
        <link href="main.css" type="text/css" rel="stylesheet"/>
        <script src="login.js" type="text/javascript" language="javascript">

        </script>
    </head>
    <body>
        <form name="frm1" id="frm1" action="myemployeeaccountdetailsconfirm.jsp" method="get">
        <table border="0" align="center" class="myprojectlayout" cellpadding="0" cellspacing="0">
            <tr class="myheadersection">
                <td colspan="3">
                     <jsp:include page="myemployeeparts/myhead.jsp">
                        <jsp:param name="myhead" value="myhead"></jsp:param>
                    </jsp:include>
                </td>

            </tr>
            <tr class="mymiddlesection">
                <td class="myleftsection">
                    <jsp:include page="myemployeeparts/myleft.jsp">
                        <jsp:param name="myleft" value="myleft"></jsp:param>
                    </jsp:include>
                </td>
                <td class="mybodysection">
                    <div>
                        <h2> Orders not taken yet:</h2>
                    </div>

                        <%
                        
                         Connection connection=null;
                        Statement statement=null;

                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                        connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

                        statement=connection.createStatement();

                        String sqlQuery="SELECT * FROM orderproduct  WHERE TakenStatus=0 ORDER BY ID DESC";

                        ResultSet rs=statement.executeQuery(sqlQuery);
                        %>

                        <table border="1" cellspacing="0">
                            <tr style="color:white; background-color: #0033cc;">
                                <th></th>
                                <th>Order ID</th>
                                <th>Product ID</th>
                                <th></th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Customer Name</th>
                                <th>Customer Contacts</th>
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
                                String orderdatetime=rs.getString(10);

                                %>
                                <tr>
                                    <td>
                                        <a href="mytakeorderconfirm.jsp?orderid=<%=id%>">Take This Order</a>
                                    </td>
                                    <td><%=id%></td>
                                    <td><%=productid%></td>
                                    <td><img src="myadmin/myproductpics/<%=productid%>.jpg" alt="" style="width: 60px; height: 60px;"/></td>
                                    <td><%=price%></td>
                                    <td><%=quantity%></td>
                                    <td><%=customername%></td>
                                    <td><%=customercontacts%></td>
                                    <td><%=orderdatetime%></td>
                                </tr>
                                <%
                            }

                statement.close();
                connection.close();

        %>
                        </table>

                    

                </td>
                <td class="myrightsection">
                    <jsp:include page="myemployeeparts/myright.jsp">
                        <jsp:param name="myright" value="myright"></jsp:param>
                    </jsp:include>
                </td>
            </tr>
            <tr class="myfootersection">
                <td colspan="3">
                    <jsp:include page="myemployeeparts/myfooter.jsp">
                        <jsp:param name="myfooter" value="myfooter"></jsp:param>
                    </jsp:include>
                </td>

            </tr>
        </table>
        </form>
    </body>
</html>
