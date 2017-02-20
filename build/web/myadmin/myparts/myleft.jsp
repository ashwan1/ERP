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
               color: white;
               background-color: #3333ee;
               display: block;
               text-decoration: none;
               border-bottom-style: inset;
               border-bottom-color: white;
               border-bottom-width: 1px;
               padding: 3px 0px 3px 3px;
               font-weight: bold;
               text-align: center;
            }

             a.link:hover
            {
                background-color: blue;
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
                    <a href="myadminwelcome.jsp" class="link">Welcome</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a class="link" href="mybrandinsert.jsp">Manage Brands</a>
                </td>
            </tr>
              <tr>
                <td>
                    <a  class="link" href="mycategoryinsert.jsp">Manage Categories</a>
                </td>
            </tr>
            <tr>
                <td>

                    <a href="myproductinsert.jsp" class="link">Manage products</a>
                </td>
            </tr>
             <tr>
                <td>

                    <a href="myemployeeinsert.jsp" class="link">Manage Employees</a>
                </td>
            </tr>
            <tr>
                <td>

                    <a href="mymanageorder.jsp" class="link">Manage order</a>
                </td>
            </tr>
            <tr>
                <td><a class="link" href="../adminlogin.jsp">Logout</a></td>
            </tr>
          
        </table>
    </body>
</html>
