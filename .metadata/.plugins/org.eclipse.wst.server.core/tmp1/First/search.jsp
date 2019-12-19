<%@page import="Book.book1"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.td{width:300px;}
</style>
<meta charset="utf-8">
<title>图书查询列表</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="book1" class="Book.book1"></jsp:useBean>
<jsp:setProperty property="*" name="book1"/>
<form action="http://localhost:8080/First/searchbook/searchbook.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>查找书籍 </h2>
    <hr>
   </td>
<tr>
    <td align="right">I &nbsp S &nbsp B &nbspN:</td>
    <td><input type="text" name="isbn"/></td>
</tr>
<tr>
    <td align="right">图书名称:</td>
    <td><input type="text" name="bookname"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="查找">
     </td>  
</tr>
</table>
</form>
<table align="center" width="1100" border="1">
   <tr>
       <td align="center" colspan="10">
           <h2>所有图书信息</h2>
       </td>
   </tr>
   <tr align="center">
      <td><b>ISBN</b></td>
      <td><b>名称</b></td>
      <td><b>作者</b></td>
      <td><b>出版社</b></td>
      <td><b>数量</b></td>
   </tr>
<% 
List<book1>list=(List<book1>)request.getAttribute("list");
if(list==null||list.size()<1){
	/* out.println("没有数据！"); */
}else{
	for(book1 book:list){
		%>
   <tr align="center">
      <td><%=book.getisbn() %></td>
      <td><%=book.getbookname() %></td>
      <td><%=book.getbookauthor() %></td>
      <td><%=book.getpubhouse()%></td>
      <td><%=book.getcount()%></td>
   </tr>
<%
	}
}
%>

</table>
</body>
</html>