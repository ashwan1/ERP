package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"main.css\" type=\"text/css\" rel=\"stylesheet\"/>\n");
      out.write("        <style type=\"text/css\" >\n");
      out.write("            .dec\n");
      out.write("            {\n");
      out.write("                float:left;\n");
      out.write("                width: 22%;\n");
      out.write("                height: 155px;\n");
      out.write("                text-align: center;\n");
      out.write("                border-style: solid;\n");
      out.write("                margin: 10px;\n");
      out.write("                border-color: #DDDDDD;\n");
      out.write("                background-color:white;\n");
      out.write("               \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dec:hover\n");
      out.write("            {\n");
      out.write("                background-color: #ffff00;\n");
      out.write("                border-color: #ff0000;\n");
      out.write("              \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .imgdec\n");
      out.write("            {\n");
      out.write("               width: 98%;\n");
      out.write("               height: 120px;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("\n");
      out.write("             \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#bbbbbb\">\n");
      out.write("        <table border=\"0\" align=\"center\" class=\"myprojectlayout\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("            <tr class=\"myheadersection\">\n");
      out.write("                <td colspan=\"3\">\n");
      out.write("                     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "myparts/myhead.jsp" + (("myparts/myhead.jsp").indexOf('?')>0? '&': '?') + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myhead", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myhead", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("                </td>\n");
      out.write("               \n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"mymiddlesection\">\n");
      out.write("                <td class=\"myleftsection\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "myparts/myleft.jsp" + (("myparts/myleft.jsp").indexOf('?')>0? '&': '?') + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myleft", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myleft", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("                </td>\n");
      out.write("                <td class=\"mybodysection\" style=\"background-color:#dddddd\">\n");
      out.write("                    <h1 style=\"font-family: Freestyle Script; font-size: 50px; margin-left: 10px; color: blueviolet\">\n");
      out.write("                        Latest products...</h1>\n");
      out.write("                    ");

                    Connection connection=null;
                    Statement statement=null;

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    
                    
                    connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/myemployeeperformanceerp","root","pankaj");

                    statement=connection.createStatement();

                    String sqlQuery="SELECT ID,BrandID,(SELECT Brand.BrandText FROM Brand WHERE Brand.ID=Product.BrandID) AS BRANDTEXT,CategoryID,(SELECT Category.CategoryText FROM Category WHERE Category.ID=Product.CategoryID) AS CATEGORYTEXT,ProductName,Description,Price,LaunchDateTime FROM Product ORDER BY ID DESC limit 8";
                     ResultSet rs3=statement.executeQuery(sqlQuery);

                      while(rs3.next())
                {
                     String id=rs3.getString(1);
                     String brandid=rs3.getString(2);
                     String brandtext=rs3.getString(3);
                     String categoryid=rs3.getString(4);
                     String categorytext=rs3.getString(5);
                     String productname=rs3.getString(6);
                     String description=rs3.getString(7);
                     String price=rs3.getString(8);
                     String launchdatetime=rs3.getString(9);

                     
      out.write("\n");
      out.write("                      <div class=\"dec\" style=\"overflow:auto;\">\n");
      out.write("                         <table align=\"center\">\n");
      out.write("                             <tr>\n");
      out.write("                                 <td>\n");
      out.write("                                     <a target=\"_blank\" href=\"myproductdetail.jsp?ID=");
      out.print(id);
      out.write("\" >\n");
      out.write("                                         <img src=\"myadmin/myproductpics/");
      out.print(id);
      out.write(".jpg\" title=\"");
      out.print(description);
      out.write("\" alt=\"");
      out.print(productname);
      out.write("\" class=\"imgdec\" />\n");
      out.write("                                     </a>\n");
      out.write("\n");
      out.write("                                 </td>\n");
      out.write("                             </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                 <td>\n");
      out.write("                                      <a target=\"_blank\" href=\"myproductdetail.jsp?ID=");
      out.print(id);
      out.write("\"  style=\" text-decoration: none; color:#854555;\">\n");
      out.write("                                                    ");
      out.print(productname);
      out.write("\n");
      out.write("                                      </a>\n");
      out.write("                                 </td>\n");
      out.write("                             </tr>\n");
      out.write("                         </table>\n");
      out.write("                     </div>\n");
      out.write("\n");
      out.write("                    ");

                    }

                     statement.close();
                     connection.close();
                    
      out.write("\n");
      out.write("                </td>\n");
      out.write("                <td class=\"myrightsection\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "myparts/myright.jsp" + (("myparts/myright.jsp").indexOf('?')>0? '&': '?') + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myright", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myright", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"myfootersection\">\n");
      out.write("                <td colspan=\"3\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "myparts/myfooter.jsp" + (("myparts/myfooter.jsp").indexOf('?')>0? '&': '?') + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myfooter", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("myfooter", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
