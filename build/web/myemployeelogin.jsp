<%-- 
    Document   : myemployeelogin
    Created on : Oct 3, 2014, 12:02:09 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%String error= request.getParameter("error");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="main.css" type="text/css" rel="stylesheet"/>
        <script src="Elogin.js" type="text/javascript" language="javascript">

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
                <td class="mybodysection"><h2>Employee Login..</h2>
                    <%if(error!=null){
                        if(error.equalsIgnoreCase("1")){%>
                    <span style="color: #990033">Wrong combination of username and password</span>
                    <%}}%>
                    <div>
                        <table border="1" rules="none" style="background-color: cyan; margin-left: 10px;">
                            <tr>
                                <td>Employee login</td>
                                <td>:</td>
                                <td><input type="text" id="logintext" name="logintext"/></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>:</td>
                                <td><input type="password" id="password" name="password" onkeyup="return clickBtn(event);"/></td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td>
                                    <input type="button" id="butt1" name="but1" value="LogIn"
                                           onclick="javascript:Elogin();"/>
                                </td>
                            </tr>
                        </table>
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
