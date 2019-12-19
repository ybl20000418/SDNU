<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>添加图书信息</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="book1" class="Book.book1"></jsp:useBean>
<jsp:setProperty property="*" name="book1"/>
<%
Statement stmt=null;
Connection conn=null;

try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
/* 	   if(b!=null){
			  System.out.println("连接成功");
		  } */
       int classnum=book1.getclassnum();
	   String bookname=book1.getbookname();
	   String bookauthor=book1.getbookauthor();
	  /*  System.out.println(bookauthor+"zh传参"); */
	   String pubhouse=book1.getpubhouse();
/* 	   System.out.println(pubhouse+"出版社传参"); */
	   float pubdate=book1.getpubdate();
	   String isbn=book1.getisbn();
	   int count=book1.getcount();
	   String sql="insert into tb_books values('"+classnum+"','"+bookname+"','"+bookauthor+"','"+pubhouse+"','"+pubdate+"','"+isbn+"','"+count+"')";
	    stmt.executeUpdate(sql);
	    out.println("成功添加了"+bookname+"书籍！\n");
	  /*  System.out.println(name);
	   System.out.println(price);
	   System.out.println(bookCount);
	   System.out.println(author); */
	  /*  String sql="insert into tb_books(name,price,bookCount,author)values(?,?,?,?)";
	   PreparedStatement ps=b.prepareStatement(sql);
	   ps.setString(1, book1.getname());
	   ps.setDouble(2,book1.getprice());
	   ps.setInt(3, book1.getbookCount());
	   ps.setString(4,book1.getauthor());
	   int row=ps.executeUpdate();
	   out.println("上部分执行");
	   if(row>0){
		   out.print("成功添加了"+row+"条数据！");
		   
	   } */
	 /*  ps.close(); */
	   b.close(); 
	  
	   
  }catch(Exception e){
	   out.print("图书添加失败！");
	   e.printStackTrace();
   }


%>
<br>
<a href="bookindex.jsp">返回</a>
</body>
</html>