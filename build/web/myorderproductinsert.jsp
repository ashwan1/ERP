<%-- 
    Document   : myorderproductinsert
    Created on : Oct 7, 2014, 12:14:19 AM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="form1" name="form1" action="myorderproductinsertconfirm.jsp" method="get">
            <div>
                <h2>Fill Order Details : </h2>
            </div>
            <div>
                <%
                   String productid=request.getParameter("productid").toString().trim();


                %>
                <table>
                    <tr style="display: none;">
                        <td>Product ID</td>
                        <td>:</td>
                        <td>
                            <input value="<%=productid%>" type="text" id="txtProductID" name="txtProductID"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td>:</td>
                        <td>
                            <input type="text" id="txtQuantity" name="txtQuantity" style="width: 50px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Customer Name</td>
                        <td>:</td>
                        <td>
                            <input type="text" id="txtCustomerName" name="txtCustomerName"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Customer Contacts</td>
                        <td>:</td>
                        <td>
                            <textarea id="txtCustomerContacts" name="txtCustomerContacts" rows="3" cols="35"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td>
                            <input type="submit" id="sub1" name="sub1" value="Forward My Order"/>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
