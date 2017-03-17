<%-- 
    Document   : myemployeeaccountdetailsconfirm
    Created on : Oct 3, 2014, 1:52:37 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page  import="java.io.*" %>
<%@page import="java.sql.*" %>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="main.css" type="text/css" rel="stylesheet"/>
        <script src="login.js" type="text/javascript" language="javascript">

        </script>
    </head>
    <body>
        <form name="frm1" id="frm1" action="myemployeeaccountdetailsconfirm.jsp" method="get">
        <table border="0" align="center" class="myprojectlayout" cellpadding="0" cellspacing="0">
            <tr class="myheadersection">
                <td colspan="3">
                     <jsp:include page="myemployeeparts/myhead.jsp">
                        <jsp:param name="myhead" value="myhead"></jsp:param>
                    </jsp:include>
                </td>

            </tr>
            <tr class="mymiddlesection">
                <td class="myleftsection">
                    <jsp:include page="myemployeeparts/myleft.jsp">
                        <jsp:param name="myleft" value="myleft"></jsp:param>
                    </jsp:include>
                </td>
                <td class="mybodysection">
                    <%
                    String employeeid=session.getAttribute("EMPLOYEEID").toString().trim();
            String employeename=request.getParameter("ename").toString().trim();
            String loginid=request.getParameter("loginidtxt").toString().trim();
            String password=request.getParameter("pwd").toString().trim();

            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="UPDATE Employee SET employeeName='"+employeename+"',LoginID='"+loginid+"',Password='"+password+"' WHERE ID='"+employeeid+"'";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();

        %>
                    <div><br><br><br>
                        <h1>YOUR RECORD IS UPDATED</h1>
                    </div>
                       
                </td>
                <td class="myrightsection">
                    <jsp:include page="myemployeeparts/myright.jsp">
                        <jsp:param name="myright" value="myright"></jsp:param>
                    </jsp:include>
                </td>
            </tr>
            <tr class="myfootersection">
                <td colspan="3">
                    <jsp:include page="myemployeeparts/myfooter.jsp">
                        <jsp:param name="myfooter" value="myfooter"></jsp:param>
                    </jsp:include>
                </td>

            </tr>
        </table>
        </form>
    </body>
</html>

