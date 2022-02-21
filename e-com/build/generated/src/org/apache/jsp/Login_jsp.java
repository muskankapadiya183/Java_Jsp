package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      Beans.DB conn = null;
      synchronized (session) {
        conn = (Beans.DB) _jspx_page_context.getAttribute("conn", PageContext.SESSION_SCOPE);
        if (conn == null){
          conn = new Beans.DB();
          _jspx_page_context.setAttribute("conn", conn, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\n');
conn.Connect(); 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("    html,body { \n");
      out.write("\theight: 100%; \n");
      out.write("}\n");
      out.write(".global-container{\n");
      out.write("\theight:100%;\n");
      out.write("\tdisplay: flex;\n");
      out.write("\talign-items: center;\n");
      out.write("\tjustify-content: center;\n");
      out.write("\tbackground-color: #f5f5f5;\n");
      out.write("}\n");
      out.write("form{\n");
      out.write("\tpadding-top: 10px;\n");
      out.write("\tfont-size: 14px;\n");
      out.write("\tmargin-top: 30px;\n");
      out.write("}\n");
      out.write(".card-title{ font-weight:300; }\n");
      out.write(".btn{\n");
      out.write("\tfont-size: 14px;\n");
      out.write("\tmargin-top:20px;\n");
      out.write("}\n");
      out.write(".login-form{ \n");
      out.write("\twidth:330px;\n");
      out.write("\tmargin:20px;\n");
      out.write("}\n");
      out.write(".sign-up{\n");
      out.write("\ttext-align:center;\n");
      out.write("\tpadding:20px 0 0;\n");
      out.write("}\n");
      out.write(".alert{\n");
      out.write("\tmargin-bottom:-30px;\n");
      out.write("\tfont-size: 13px;\n");
      out.write("\tmargin-top:20px;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"global-container\">\n");
      out.write("\t<div class=\"card login-form\">\n");
      out.write("\t<div class=\"card-body\">\n");
      out.write("\t\t<h3 class=\"card-title text-center\">Sign Up E-Com</h3>\n");
      out.write("\t\t<div class=\"card-text\">\n");
      out.write("\t\t\t");

                           String t = request.getParameter("type");
                            if(t == "0"){
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                        \t<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">Incorrect username or password.</div> \n");
      out.write("\t\t\t ");
 }
      out.write("\n");
      out.write("                                <form action=\"checklogin.jsp\" method=\"post\">\n");
      out.write("              \n");
      out.write("\t\t\t\t<!-- to error: add class \"has-danger\" -->\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<label for=\"exampleInputEmail1\">Email address</label>\n");
      out.write("\t\t\t\t\t<input type=\"email\" class=\"form-control form-control-sm\" name=\"email\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<label for=\"exampleInputPassword1\">Password</label>\n");
      out.write("\t\t\t\t\t<a href=\"#\" style=\"float:right;font-size:12px;\">Forgot password?</a>\n");
      out.write("\t\t\t\t\t<input type=\"password\" class=\"form-control form-control-sm\" name=\"password\" id=\"exampleInputPassword1\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"btn btn-primary btn-block\">Sign in</button>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"sign-up\">\n");
      out.write("\t\t\t\t\tDon't have an account? <a href=\"Reg.jsp\">Create One</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
