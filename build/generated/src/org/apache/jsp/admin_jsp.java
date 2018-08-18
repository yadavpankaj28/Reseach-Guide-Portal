package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/HeaderAdmin.jsp");
    _jspx_dependants.add("/FooterAdmin.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap-theme.min.css\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/bootstrap.theme.min.css\"/>\n");
      out.write("\t\t<script src=\"js/jquery.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("                <style>\n");
      out.write("                    .well-lg{\n");
      out.write("                        background-color: #113f6c !important;\n");
      out.write("                        margin-bottom: 0px;\n");
      out.write("                        height: 30px !important;\n");
      out.write("                    }\n");
      out.write("                    #apple{\n");
      out.write("                        font-size:14px;\n");
      out.write("                        margin-left:850px;\n");
      out.write("                        alignment-adjust: right !important;\n");
      out.write("                    }\n");
      out.write("                    #navbar{\n");
      out.write("                        background-color: #f8991e !important ;\n");
      out.write("                        padding-bottom: 0px;\n");
      out.write("                        margin-bottom: 0px;\n");
      out.write("                         \n");
      out.write("                           }\n");
      out.write("                    .navbar-brand{\n");
      out.write("                              height:113px;\n");
      out.write("                           }\n");
      out.write("                           .navbar-header{\n");
      out.write("                               height: 87px;\n");
      out.write("                           }\n");
      out.write("                   \n");
      out.write("                    #mango:hover{\n");
      out.write("                         color: #113f6c !important;\n");
      out.write("                        text-decoration: underline;\n");
      out.write("                        font-size: 18px;\n");
      out.write("                      \n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </style>\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("        <div class=\"well-lg \">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div id=\"apple\">\n");
      out.write("                    <span style=\"color:orange;\" class=\"glyphicon glyphicon-envelope\" ></span>&nbsp;<a style=\"color:white;\" href=\"\">info@thapar.edu</a>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <span style=\"color:orange;\" class=\" glyphicon glyphicon-earphone\"></span>&nbsp;<a style=\"color:white;\" href=\"\"  >+(91)-175 239 3021</a>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            <nav class=\"navbar \" id=\"navbar\"  >\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"navbar-header\" >\n");
      out.write("                            <a class=\"navbar-brand\" href=\"admin.jsp\"><img style=\" margin-right: 50px;\" src=\"tilogo.png\" alt=\"Logo_TI\" width=\"80px\" height=\"75px\" /></a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right \"  id = \"mango\">\n");
      out.write("                            \n");
      out.write("                        <li ><a   class=\"\" href=\"admin.jsp\" ><h4 style=\"color:white;\" >HOMEPAGE</h4></a></li>\n");
      out.write("                     <!--   <li ><a class=\"\" href=\"#\" ><h4 style=\"color:white;\" >ABOUT US</h4></a></li>\n");
      out.write("                        <li ><a class=\"\" href=\"#\" ><h4 style=\"color:white;\" >SERVICES</h4></a></li>\n");
      out.write("                        <li ><a class=\"\" href=\"#\" ><h4 style=\"color:white;\" >PROJECTS</h4></a></li> -->\n");
      out.write("                  ");
 
                      String sa = (String) session.getAttribute("username");
                      if(sa==null)
                      {
                      
      out.write("\n");
      out.write("                        \n");
      out.write("                        <li ><a class=\"\" href=\"login.jsp\" ><h4 style=\"color:white;\" >LOGIN</h4></a></li>\n");
      out.write("                        ");

                      }
                      else
                      {
                      
      out.write("\n");
      out.write("                                    <li ><a class=\"\" href=\"logout.jsp\" ><h4 style=\"color:white;\" >LOGOUT</h4></a></li>\n");
      out.write("                      ");
  } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        <li ><a class=\"\" href=\"contactus.jsp\" ><h4 style=\"color:white;\" >CONTACT US</h4></a></li>\n");
      out.write("                               \n");
      out.write("                    </ul>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t</nav>\n");
      out.write("            </body> \n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("<h1>This is Admin Section</h1>\r\n");
      out.write("\r\n");
      out.write("<a href=\"addnewteacher.jsp\">Add New Teachers</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("<a href=\"assign.jsp\">Assign User Credentials</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("<a href=\"n_research_topic.jsp\">Add New Latest Research Information</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("\r\n");
      out.write("<a href=\"delete_research_topic.jsp\">Delete Latest Research Information</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("\r\n");
      out.write("<a href=\"update_research_topic.jsp\">Edit Latest Research Information</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("\r\n");
      out.write("<a href=\"add_research.jsp\">Add New Research Topics</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/bootstrap.theme.min.css\"/>\n");
      out.write("\t\t<script src=\"js/jquery.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("                <style>\n");
      out.write("                    .jumbotron{\n");
      out.write("                        background-color: #113f6c !important;\n");
      out.write("                     \n");
      out.write("                    }\n");
      out.write("                    #orange:hover{\n");
      out.write("                        \n");
      out.write("                        color: #113f6c!important;\n");
      out.write("                        text-decoration: underline;\n");
      out.write("        \n");
      out.write("                    } \n");
      out.write("                </style>\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("            <div class=\"jumbotron \">\n");
      out.write("                \n");
      out.write("                <div class=\" container\" id=\"orange\">\n");
      out.write("                    \n");
      out.write("                    <strong style=\"color:white;\"> <a style=\"color:white;\" href=\"admin.jsp\"  >HOMEPAGE</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</strong>\n");
      out.write("                 \n");
      out.write("                <strong style=\"color:white;\"><a style=\"color:white;\" href=\"contactus.jsp\"  >CONTACT US</a></span></strong>\n");
      out.write("                        \n");
      out.write("                </div>\n");
      out.write("                <strong> <i> <h6 style=\" margin-left:  112px; color: white;\">© 2018 All Rights Reserved</h6></i></strong>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write(" \n");
      out.write("        </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
