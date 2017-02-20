<%-- 
    Document   : myemployeekill
    Created on : Oct 3, 2014, 2:12:48 PM
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
           session.setAttribute("EMPLOYEEID", null);

           response.sendRedirect("myemployeelogin.jsp");
        %>
    </body>
</html>
