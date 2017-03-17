<%-- 
    Document   : myright
    Created on : Sep 24, 2014, 10:37:52 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*" %>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
          

             a.categoryLink
            {
               width: 100%;
               color: white;
               background-color: #456550;
               display: block;
               text-decoration: none;
               border-bottom-style: inset;
               border-bottom-color: white;
               border-bottom-width: 3px;
               padding: 3px 0px 3px 3px;
               font-weight: bold;
               text-align: center;
               border-radius: 10px;
               margin-top: 4px;
               

            }

             a.categoryLink:hover
            {
               background-color: #459596;
               border-bottom-style: outset;
               border-color: #222222;
            }


        </style>
        <script type="text/javascript" language="javascript">
            function search()
            {
                var searchtext=document.getElementById("txtSearch").value;

                if(searchtext!="")
                    {
                        window.location="mysearchproducts.jsp?searchtext="+searchtext;
                    }
                    else{
                        alert("please enter product name or related keyword to search")
                    }
            }
        </script>
    </head>
    <body>
        <div>
            <table border="1" rules="none" style="width:100%; background-color: #676767;">
                <tr>
                    <td>
                        <input type="text" id="txtSearch" name="txtSearch"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="border-radius :5px; " type="button" id="btnSearch" name="btnSearch"
                               value="Search" onclick="javascript:search();" />
                    </td>
                </tr>
            </table>
        </div>
         <div style=" background-color: black; color: white; font-weight: bold; padding: 1px; margin-top: 15px;">
            Categories
        </div>
        <div style="margin-right: 4px;">
          
                        <%
            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="SELECT * FROM Category";

            ResultSet rs=statement.executeQuery(sqlQuery);



            while(rs.next())
                {
                     String id=rs.getString(1);
                     String category=rs.getString(2);

                     %>
                    
                     <a class="categoryLink" href="mycategoryproducts.jsp?categoryid=<%=id%>"><%=category%></a>
                        
                     <%

                }

            statement.close();
            connection.close();

        %>
           
                    </div>
    </body>
</html>
