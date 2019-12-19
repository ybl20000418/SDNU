<%@page import="Book1.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>删除图书信息</title>
</head>
<body>
<table align="center" width="500" border="1">
<tr>
<td align="center" colspan="6">
<h2>所有图书信息</h2>
</td>
<tr>
<tr align="center">
<td><b>ID</b></td>
<td><b>图书名称</b></td>
<td><b>价格</b></td>
<td><b>数量</b></td>
<td><b>作者</b></td>
<td><b>删除</b></td>
</tr>
<%
Statement stmt=null;
Connection conn=null;
ResultSet rs=null;
ResultSet rs1=null;
try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
		/* private int id;
		private String name;
		private double price;
		private int bookCount;
		private String author; */
		int[] d1 = new int[1000];
		String[] d2=new String[1000];
		Double[] d3=new Double[1000];
		int [] d4=new int[1000];
		String[] d5=new String[1000];
		rs=stmt.executeQuery("select *  from tb-books");
		int count=0;
		while(rs.next()) {
			d1[count]=rs.getInt("id");
			d2[count]=rs.getString("name");
			d3[count]=rs.getDouble("price");
			d4[count]=rs.getInt("bookCount");
			d5[count]=rs.getString("author");
			/* System.out.println(d1[count]+" "+d4[count]); */
			count++;	
		}
		
	   b.close(); 
	  
	   
  }catch(Exception e){
	/*    System.out.print("删除失败！"); */
	   e.printStackTrace();
   }
%>
<tr align="center">
<td>
</table>
</body>
</html>