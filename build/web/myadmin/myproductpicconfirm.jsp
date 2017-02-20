<%-- 
    Document   : myproductpicconfirm
    Created on : Sep 29, 2014, 12:09:57 AM
    Author     : intel
--%>
<%@page import="java.io.*" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.io.File" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
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
        FileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload=new ServletFileUpload(factory);

        List pics=upload.parseRequest(request);

        Iterator itr=pics.iterator();

        FileItem pic=(FileItem)itr.next();

        String filename=session.getAttribute("PRODUCTID").toString().trim();


        File savedfile=new File("D:/my practise/myemployeeperformanceerp/web/myadmin/myproductpics/"+filename+".jpg");

        pic.write(savedfile);

        %>
        <h2>IMAGE UPLOADED REFRESH PAGE</h2>

    </body>
</html>
       
