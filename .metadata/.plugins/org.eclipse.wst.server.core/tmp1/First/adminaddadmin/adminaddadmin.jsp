<%@page import="Admin.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>添加管理员</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="admin" class="Admin.admin"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>
<%
Statement stmt=null;
Connection conn=null;

try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
      int jbid=admin.getjbid();
	  String jbname=admin.getjbname();
	  int jbpwd=admin.getjbpwd();
	  String sql="insert into tb_admin values('"+jbid+"','"+jbname+"','"+jbpwd+"')";
	  stmt.executeUpdate(sql);
	  out.println("信息添加成功！\n");
	   b.close(); 	   
  }catch(Exception e){
	   out.print("信息添加失败！");
	   e.printStackTrace();
   }
%>
<br>
<a href="adminaddadminindex.jsp">返回</a>
</body>
</html>