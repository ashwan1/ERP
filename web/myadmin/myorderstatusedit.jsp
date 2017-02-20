<%-- 
    Document   : myorderstatusedit
    Created on : Oct 9, 2014, 11:50:20 AM
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
        <form id="form1" name="form1" action="myorderstatuseditconfirm.jsp" method="get">
            <h2>Edit Order Status : </h2>
            <%
               String orderid=request.getParameter("ID").trim();
            %>
            <div>
                <table>
                    <tr style="display: none;">
                        <td>id</td>
                        <td>:</td>
                        <td>
                            <input value="<%=orderid%>" type="text" id="txtID" name="txtID"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>:</td>
                        <td>
                            <select id="ddlStatus" name="ddlStatus">
                                <option value="0">PENDING</option>
                                <option value="1">CANCELED</option>
                                <option value="2">SOLD</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td>
                            <input type="submit" id="sub1" name="sub1" value="EDIT STATUS" />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
