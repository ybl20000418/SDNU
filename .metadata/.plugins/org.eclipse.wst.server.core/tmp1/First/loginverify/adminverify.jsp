<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>管理员信息验证</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<%
		String username = request.getParameter("jbid");
		String password = request.getParameter("jbpwd");
	%>
<jsp:useBean id="admin" class="Admin.admin"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>
<%
ResultSet rs=null;
ResultSet rs1=null;
Statement stmt=null;
Connection conn=null;

try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
       int jbid=admin.getjbid();
       int jbpwd=admin.getjbpwd();
/*        System.out.println(jbid+" "+jbpwd+"adlogin"); */
       rs=stmt.executeQuery("select *  from tb_admin");
       while(rs.next()) {
    	int jbid2=rs.getInt("jbid");
    	int jbpwd2=rs.getInt("jbpwd");
    	/* System.out.println(jbid2+" "+jbpwd2); */
    	
    	if (jbid==jbid2&&jbpwd==jbpwd2) {
    		response.sendRedirect("http://localhost:8080/First/adminshouye/adminhome.jsp");
			} else {
				%>
				登录信息有误！
				<a href="http://localhost:8080/First/logindwn/adminlogin.jsp">点击此处返回</a>				<% 
    		/* 	System.out.print("登录信息有误！");  */
	}
}
	   b.close(); 
	  
  }catch(Exception e){
	   out.print("输入错误！");
	   e.printStackTrace();
   }


%>
</body>
</html>