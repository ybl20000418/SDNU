<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>aedit</title>
<link href="${pageContext.request.contextPath}/administrator/css/aedit01.css" rel="stylesheet" type="text/css">
	<script>
		function war(){
			alert("删除成功！")
		}
	</script>
</head>

<body>
   <div id="show">
	<table width="99%" border="1" >
	     <tr class="head">
			 <td align="center" width="8%">图书分类号</td>
			 <td align="center" width="20%">书名</td>
			 <td align="center" width="5%">作者</td>
			 <td align="center" width="15%">出版社</td>
			 <td align="center" width="10%">出版时间</td>
			 <td align="center" width="10%">ISBN</td>
			 <td align="center" width="10%">复本量</td>
		</tr>
	<c:forEach items="${boinfs}" var="book">
		<tr >
			 <td class="inf" align="center" width="8%">${book.kind }</td>
			 <td class="inf" align="center" width="20%">${book.name }</td>
			 <td class="inf" align="center" width="5%">${book.author }</td>
			 <td class="inf" align="center" width="15%">${book.publishhouse }</td>
			 <td class="inf" align="center" width="10%">${book.publishtime }</td>
			 <td class="inf" align="center" width="10%">${book.ISBN }</td>
			 <td class="inf" align="center" width="10%">${book.count }</td>	
		</tr>
	</c:forEach>
	</table>
   </div>
    <div id="delete">
		 <h2>是否确认删除本条记录?</h2>
		<a href="${pageContext.request.contextPath}/Adelete?id=${id }" onClick="war()">
			<img id="dele" src="${pageContext.request.contextPath}/administrator/images/delete.png"/>
		</a>
	</div>
	<div id="edit">
		<br/>
		<h2>请选择修改信息种类及修改信息</h2>
		<form action="${pageContext.request.contextPath}/Aedit?id=${id }" method="post" >
           <select name="type">
		      <option value="kind">图书分类号</option>
			  <option value="name">书名</option>
			  <option value="author">作者</option>
			  <option value="publishhouse">出版社</option>
			  <option value="publishtime">出版时间</option>
			  <option value="ISBN">ISBN</option>
			  <option value="count">复本量</option>
		   </select>
			<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input name="value" id="value" type="text"/>
			</p>
	    <p><input id="sear" value="" type="submit"/></p>
       </form>
       <br><br><br><br><br><br><br><br><br>
	
	</div>
</body>
</html>
