<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>返还图书</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="brbook1" class="Brbook.brbook1"></jsp:useBean>
<jsp:setProperty property="*" name="brbook1"/>
<%
Statement stmt=null;
Connection conn=null;

try{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement(); 
	   String brbookname=brbook1.getbrbookname();
	   System.out.println("书籍"+brbookname);
	   int brid=brbook1.getbrid();
	   System.out.println("学生学号"+brid);
	   String sql1="delete from tb_brbooks where brid='"+brid+"'&&brbookname='"+brbookname+"'";
	    stmt.executeUpdate(sql1);
	    out.println("成功还书!");
	   b.close(); 
	  
	   
  }catch(Exception e){
	   out.print("还书失败！");
	   e.printStackTrace();
   }


%>
<br>
<a href="http://localhost:8080/First/studentrebook/rebookindex.jsp">返回</a>
</body>
</html>