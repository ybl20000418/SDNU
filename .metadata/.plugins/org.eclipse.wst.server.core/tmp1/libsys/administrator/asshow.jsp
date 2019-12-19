<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>asshow</title>
	<link href="${pageContext.request.contextPath}/administrator/css/asshow.css" rel="stylesheet" type="text/css">
</head>

<body>
	
<div id="infor">
	   <h1>用户管理</h1>
	<table width="99%" border="1" >
	     <tr class="head">
			 <td width="16%" height="32" align="center">账号</td>
			 <td align="center" width="17%">姓名</td>
			 <td align="center" width="14%">密码</td>
			 <td align="center" width="24%">邮箱</td>
			 <td align="center" width="14%">编辑</td>
			 <td align="center" width="15%">删除</td>
			 
		</tr>
	<c:forEach items="${users}" var="user">
		<tr >
			 <td class="inf" align="center" width="16%">${user.snu }</td>
			 <td class="inf" align="center" width="17%">${user.name }</td>
			 <td class="inf" align="center" width="14%">${user.password }</td>
			 <td class="inf" align="center" width="24%">${user.mail }</td>
			 <td class="inf" align="center" width="14%"><a href="${pageContext.request.contextPath}/Aseditshow?snu=${user.snu }">编辑</a></td>
			 <td class="inf" align="center" width="15%"><a href="${pageContext.request.contextPath}/Asdelete?snu=${user.snu }">删除</a></td>
		</tr>
	</c:forEach>
	</table>
</div>
	
</body>
</html>
    