<%-- 
    Document   : myperformance
    Created on : Oct 9, 2014, 11:13:36 AM
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
                        <h1>My Performance : </h1>
                    </div>

<div>
                        <%
                        String employeeid=session.getAttribute("EMPLOYEEID").toString().trim();

                        Integer pendingcount=0;
                        Integer pendingamount=0;
                        Integer canceledcount=0;
                        Integer canceledamount=0;
                        Integer soldcount=0;
                        Integer soldamount=0;

                        Connection connection=null;
                        Statement statement=null;

                        String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                        connection=DriverManager.getConnection(connectionstring,"root","pankaj");

                        statement=connection.createStatement();

                        String sqlQuery="SELECT * FROM OrderProduct WHERE TakenEmployeeID='"+employeeid+"'";

                        ResultSet rs=statement.executeQuery(sqlQuery);

                        %>
                        <table border="1" cellspacing="0">
                            <tr style="color: white; background-color:#0033cc;">
                                <th>Order ID</th>
                                <th>Product ID</th>
                                <th></th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Customer Name</th>
                                <th>Customer Contacts</th>
                                <th>Status</th>
                                <th>Order DateTime</th>
                                <th>Order Amount</th>
                            </tr>
                        <%

                        while(rs.next())
                            {
                                String id=rs.getString(1);
                                String productid=rs.getString(2);
                                String price=rs.getString(3);
                                Integer priceint=rs.getInt(3);
                                String quantity=rs.getString(4);
                                Integer quantityint=rs.getInt(4);
                                String customername=rs.getString(5);
                                String customercontacts=rs.getString(6);
                                Integer status=rs.getInt(9);
                                String orderdatetime=rs.getString(10);

                                %>
                                <tr>
                                     <td><%=id%></td>
                                    <td><%=productid%></td>
                                    <td><img src="myadmin/myproductpics/<%=productid%>.jpg" alt="" style="width: 60px; height: 60px;"/></td>
                                    <td><%=price%></td>
                                    <td><%=quantity%></td>
                                    <td><%=customername%></td>
                                    <td><%=customercontacts%></td>
                                    <td>
                                        <%
                                           Integer orderamount=priceint*quantityint;

                                           if(status==0)
                                               {
                                                  pendingcount++;
                                                  pendingamount+=orderamount;

                                                 %><span style="color:orange">PENDING</span><%
                                               }

                                           if(status==1)
                                               {
                                                   canceledcount++;
                                                   canceledamount+=orderamount;

                                                 %><span style="color:red">CANCELED</span><%
                                               }

                                           if(status==2)
                                               {
                                                   soldcount++;
                                                   soldamount+=orderamount;

                                                 %><span style="color:green">SOLD</span><%
                                               }
                                        %>
                                    </td>
                                    <td><%=orderdatetime%></td>
                                    <td><%=orderamount%></td>
                                </tr>
                                <%
                            }

                statement.close();
                connection.close();

        %>
                        </table>
</div>
                        <br>
                        <div>
                            <table cellspacing="0" border="1" style="font-size:20px; font-weight: bold; background-color:#0099ff; color: #EEEEEE;">
                                <tr>
                                    <td></td>
                                    <th>Count</th>
                                    <th>Amount</th>
                                </tr>
                                <tr style="color:orange">
                                    <td>PENDING</td>
                                    <td><%=pendingcount%></td>
                                    <td><%=pendingamount%></td>
                                </tr>
                                <tr style="color:red">
                                    <td>CANCELED</td>
                                    <td><%=canceledcount%></td>
                                    <td><%=canceledamount%></td>
                                </tr>
                                <tr style="color:green">
                                    <td>SOLD</td>
                                    <td><%=soldcount%></td>
                                    <td><%=soldamount%></td>
                                </tr>
                            </table>
                        </div>

                                <%
                                    if(soldamount>(pendingamount+canceledamount))
                                        {
                                          %><h1 style="color:green;">YOUR PERFORMANCE IS GOOD</h1><%
                                        }
                                    else
                                        {
                                         %><h1 style="color:red;">YOUR PERFORMANCE IS NOT FAIR</h1><%
                                        }
                                %>
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
