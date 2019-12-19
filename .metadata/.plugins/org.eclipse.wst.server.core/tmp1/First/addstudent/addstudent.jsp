<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>添加学生信息</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="student" class="Student.student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
<%
Statement stmt=null;
Connection conn=null;

try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
      int stuid=student.getstuid();
	  String stuname=student.getstuname();
	  String department=student.getdepartment();
	  int stupwd=student.getstupwd();
	  int maxbook=10;
	  String sql="insert into tb_student values('"+stuid+"','"+stuname+"','"+department+"','"+stupwd+"','"+maxbook+"')";
	  stmt.executeUpdate(sql);
	  out.println("学生信息添加成功！\n");
	   b.close(); 	   
  }catch(Exception e){
	   out.print("学生信息添加失败！");
	   e.printStackTrace();
   }
%>
<br>
<a href="addstudentindex.jsp">返回</a>
</body>
</html>