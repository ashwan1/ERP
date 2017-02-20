<%-- 
    Document   : myleft
    Created on : Sep 24, 2014, 10:37:28 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            a.link{
            width: 100%;
               color: #444444;
               background-color: whitesmoke;
               display: block;
               text-decoration: none;
               border-bottom-style: inset;
               border-bottom-color: blue;
               border-bottom-width: 15px;
               padding: 3px 0px 3px 3px;
               font-weight: bold;
               text-align: center;
            }

             a.link:hover
            {
                background-color: #bbbbbb;
                color: black;
               border-bottom-style: outset;
               width: 110%;
               text-decoration: underline;
            }

           
        </style>
    </head>
    <body>
        <table border="0" cellspacing="0" cellpadding="0" style="width:100%">
            <tr>
                <td>
                    <a href="myemployeeacount.jsp" class="link">My Account</a>
                </td>
            </tr>
             <tr>
                <td>
                    <a href="myorderlist.jsp" class="link">Order List</a>
                </td>
            </tr>
             <tr>
                <td>
                    <a href="myperformance.jsp" class="link">My Performance</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="myemployeekill.jsp" class="link">LogOut </a>
                </td>
            </tr>
            
        </table>
    </body>
</html>
