/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.27
 * Generated at: 2019-12-05 07:44:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.searchbook;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Book.book1;
import java.sql.PreparedStatement;
import java.sql.*;

public final class searchbook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("Book.book1");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
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

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP 只允许 GET、POST 或 HEAD。Jasper 还允许 OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style>\r\n");
      out.write("    body {\r\n");
      out.write(" background-image:url(../image/bj7.jpg);\r\n");
      out.write(" background-repeat: no-repeat;\r\n");
      out.write(" background-size:1920px 1080px;\r\n");
      out.write(" width:;\r\n");
      out.write(" height:100%;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>图书查阅ISBN</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
request.setCharacterEncoding("UTF-8"); 
      out.write('\r');
      out.write('\n');
      Book.book1 book1 = null;
      book1 = (Book.book1) _jspx_page_context.getAttribute("book1", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (book1 == null){
        book1 = new Book.book1();
        _jspx_page_context.setAttribute("book1", book1, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("book1"), request);
      out.write('\r');
      out.write('\n');

ResultSet rs=null;
ResultSet rs1=null;
Statement stmt=null;
Connection conn=null;
try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
 	   String isbn=book1.getisbn(); 
 	   /* System.out.println(isbn); */
/* 	   String isbn="0000263606";  */
	   String bookname2=book1.getbookname();
	   rs=stmt.executeQuery("select *  from tb_books");
		while(rs.next()) {
			String isbn1=rs.getString("isbn");
			String bookname1=rs.getString("bookname");
			int count=rs.getInt("count");
		if(isbn.matches(isbn1)) {

			
      out.write("\r\n");
      out.write("\t\t\t<table align=\"center\" width=\"450px\" border=\"1\">\r\n");
      out.write("\t\t   <tr>\r\n");
      out.write("\t\t       <td align=\"center\" colspan=\"10\">\r\n");
      out.write("\t\t           <h2>图书信息</h2>\r\n");
      out.write("\t\t       </td>\r\n");
      out.write("\t\t   </tr>\r\n");
      out.write("\t\t   <tr align=\"center\">\r\n");
      out.write("\t\t      <td><b>ISBN</b></td>\r\n");
      out.write("\t\t      <td><b>图书名称</b></td>\r\n");
      out.write("\t\t         <td><b>数量</b></td>\r\n");
      out.write("\t\t   </tr>\r\n");
      out.write("\t\t    <tr align=\"center\">\r\n");
      out.write("\t\t      <td>");
      out.print(isbn);
      out.write("</td>\r\n");
      out.write("\t\t      <td>");
      out.print(bookname1);
      out.write("</td> \r\n");
      out.write("\t\t        <td>");
      out.print(count);
      out.write("</td> \r\n");
      out.write("\t\t   </tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t\t");

		}
			}
	   b.close(); 	   
  }catch(Exception e){
	   out.print("图书查阅失败！");
	   e.printStackTrace();
   }

      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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