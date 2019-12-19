<%@page import="Book1.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>删除书目信息</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="book1" class="Book.book1"></jsp:useBean>
<jsp:setProperty property="*" name="book1"/>
<%
Statement stmt=null;
Connection conn=null;

try{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement(); 
	  String isbn=book1.getisbn();
	   String bookname=book1.getbookname();
	   String sql1="delete from tb_books where isbn='"+isbn+"'";
	    stmt.executeUpdate(sql1);
	    out.println("成功删除书籍!");
	   b.close(); 
	  
	   
  }catch(Exception e){
	   out.print("图书删除失败！");
	   e.printStackTrace();
   }


%>
<br>
<a href="http://localhost:8080/First/admindeletebook/deletebookindex2.jsp">返回</a>
</body>
</html>