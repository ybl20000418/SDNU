<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>sreturn</title>
<link href="${pageContext.request.contextPath}/student/css/sreturn.css" rel="stylesheet" type="text/css">
<script>
		
	function war(){
		alert("还书成功！");
	}
	</script>
</head>
</head>
    
<body>
	<div id="infor">
	<h2>借书记录</h2>
	<table width="99%" border="1" >
	     <tr class="head">
			 <td align="center" width="20%">书籍种类</td>
			 <td align="center" width="21%">书名称</td>
			 <td align="center" width="27%">ISBN</td>
             <td align="center" width="22%">借书时间</td>
			 <td align="center" width="10%">还书</td>
			 
		</tr>
	<c:forEach items="${borrows}" var="borrow">
		<tr >
			 <td class="inf" align="center" width="20%">${borrow.kind }</td>
			 <td class="inf" align="center" width="21%">${borrow.name }</td>
             <td class="inf" align="center" width="27%">${borrow.ISBN }</td>
			 <td class="inf" align="center" width="22%">${borrow.time }</td>
			 <td class="inf" align="center" width="10%"><a href="${pageContext.request.contextPath}/Return?ISBN=${borrow.ISBN }"
				 onClick="war()">还书</a></td>
		</tr>
	</c:forEach>
	</table>
</div>
</body>
</html>