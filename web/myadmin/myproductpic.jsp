<%-- 
    Document   : myproductpic
    Created on : Sep 29, 2014, 12:09:29 AM
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
        <form name="form" id="form" action="myproductpicconfirm.jsp" method="post" enctype="multipart/form-data">
       <%
       String id=request.getParameter("ID").toString().trim();
       session.setAttribute("PRODUCTID",id);
       %>
       <h2>
           Upload pic:
       </h2>
       <table>
           <tr>
               <td><input type="file" id="file" name="file"/></td>
           </tr>
           <tr>
                <td><input type="submit" name="sub" id="sub" value="upload"/></td>
           </tr>
       </table>
        </form>
    </body>
</html>
