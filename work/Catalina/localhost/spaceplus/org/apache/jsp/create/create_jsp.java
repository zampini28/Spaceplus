/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.20
 * Generated at: 2024-04-22 07:30:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.create;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class create_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Criar</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"create/style.css\">\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <header>\n");
      out.write("      <a href=\"/spaceplus/browser\">Space+</a>\n");
      out.write("    </header>\n");
      out.write("    <div class=\"container\">\n");
      out.write("    <div class=\"sub_container\">\n");
      out.write("      <form action=\"/spaceplus/create\" method=\"POST\">\n");
      out.write("        <label for=\"title\">Título</label>\n");
      out.write("        <input type=\"text\" name=\"title\" id=\"title\" placeholder=\"Título\" required>\n");
      out.write("        <label for=\"rating\">Avaliação</label>\n");
      out.write("        <input type=\"number\" step=\".1\" min=\"0\" max=\"5\" name=\"rating\" id=\"rating\" placeholder=\"Avaliação\" required>\n");
      out.write("        <label for=\"releaseDate\">Data de Lançamento</label>\n");
      out.write("        <input type=\"text\" name=\"releaseDate\" id=\"releaseDate\" placeholder=\"Data de Lançamento\" required>\n");
      out.write("        <label for=\"director\">Diretor</label>\n");
      out.write("        <input type=\"text\" name=\"director\" id=\"director\" placeholder=\"Diretor\" required>\n");
      out.write("        <label for=\"description\">Descrição</label>\n");
      out.write("        <textarea name=\"description\" id=\"description\" placeholder=\"Descrição\" required></textarea>\n");
      out.write("        <label for=\"duration\">Duração</label>\n");
      out.write("        <input type=\"text\" name=\"duration\" id=\"duration\" placeholder=\"Duração\" required>\n");
      out.write("        <label for=\"price\">Preço</label>\n");
      out.write("        <input type=\"number\" step=\".01\" min=\"0\" name=\"price\" id=\"price\" placeholder=\"Preço\" required>\n");
      out.write("        <label for=\"language\">Línguagem</label>\n");
      out.write("        <input type=\"text\" name=\"language\" id=\"language\" placeholder=\"Línguagem\" required>\n");
      out.write("        <label for=\"thumbnail\">Thumbnail</label>\n");
      out.write("        <input type=\"url\" name=\"thumbnail\" id=\"thumbnail\" size=\"30\" placeholder=\"Thumbnail\" required>\n");
      out.write("        <label class=\"sumbit_label\" for=\"submit\"></label>\n");
      out.write("        <input type=\"submit\" value=\"Enviar\" id=\"submit\" required>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
