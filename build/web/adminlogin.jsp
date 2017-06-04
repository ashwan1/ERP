<%-- 
    Document   : adminlogin
    Created on : Sep 25, 2014, 12:13:48 AM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
    String error= request.getParameter("error");
    //String verified = (String)session.getAttribute("verified");
    session.setAttribute("verified", null);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="main.css" type="text/css" rel="stylesheet"/>
        <script src="login.js" type="text/javascript" language="javascript">

        </script>
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
                <td class="mybodysection"><h2>Admin Login..</h2>
                    <%if(error!=null){
                        if(error.equalsIgnoreCase("1")){%>
                    <span style="color: #990033">Wrong combination of username and password</span>
                    <%}}%>
                    <div>
                        <form action="AdminLogin" method="POST">
                            <table border="1" rules="none" style="background-color: cyan; margin-left: 10px;">
                                <tr>
                                    <td>Admin login</td>
                                    <td>:</td>
                                    <td><input type="text" id="logintext" name="uname"/></td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td>:</td>
                                    <td><input type="password" id="password" name="password"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input type="submit" id="butt1" name="but1" value="LogIn"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </td>
                <td class="myrightsection">
                    <jsp:include page="myparts/myright.jsp">
                        <jsp:param name="myright" value="myright"></jsp:param>
                    </jsp:include>
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
