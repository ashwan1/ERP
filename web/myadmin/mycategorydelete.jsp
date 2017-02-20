<%-- 
    Document   : mycategorydelete
    Created on : Sep 27, 2014, 12:21:14 PM
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
       <%
       String id=request.getParameter("ID").trim();
       %>
        <table style="width: 100%; text-align: center;">
            <tr>
                <td colspan="2">
                    <b>ARE YOU SURE TO DELETE THIS RECORD</b>
                </td>
            </tr>
            <tr style="font-weight:bold;">
                <td><a style="color: red; font-size: 22px;" href="mycategorydeleteconfirm.jsp?ID=<%=id%>">YES</a></td>
                <td><a style="color: green; font-size: 22px;" href="javascript:window.close();">NO</a></td>
            </tr>
        </table>
    </body>
</html>

