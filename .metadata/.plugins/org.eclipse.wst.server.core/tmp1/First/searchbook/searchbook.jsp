<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {
 background-image:url(../image/bj7.jpg);
 background-repeat: no-repeat;
 background-size:1920px 1080px;
 width:;
 height:100%;
}
</style>
<meta charset="utf-8">
<title>图书查阅ISBN</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="book1" class="Book.book1"></jsp:useBean>
<jsp:setProperty property="*" name="book1"/>
<%
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

			%>
			<table align="center" width="450px" border="1">
		   <tr>
		       <td align="center" colspan="10">
		           <h2>图书信息</h2>
		       </td>
		   </tr>
		   <tr align="center">
		      <td><b>ISBN</b></td>
		      <td><b>图书名称</b></td>
		         <td><b>数量</b></td>
		   </tr>
		    <tr align="center">
		      <td><%=isbn%></td>
		      <td><%=bookname1%></td> 
		        <td><%=count%></td> 
		   </tr>
		</table>
			<%
		}
			}
	   b.close(); 	   
  }catch(Exception e){
	   out.print("图书查阅失败！");
	   e.printStackTrace();
   }
%>
<br>
</body>
</html>