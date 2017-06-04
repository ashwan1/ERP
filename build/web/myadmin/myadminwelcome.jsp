<%-- 
    Document   : myadminwelcome
    Created on : Sep 25, 2014, 12:12:17 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
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
                <td colspan="2" class="mybodysection"><h2>Welcome Admin:</h2></td>
                
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
