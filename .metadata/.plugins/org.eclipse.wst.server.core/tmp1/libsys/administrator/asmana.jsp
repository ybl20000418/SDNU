<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>asmana</title>
<link href="${pageContext.request.contextPath}/administrator/css/asmana.css" rel="stylesheet" type="text/css">
</head>

<body>
<a href="${pageContext.request.contextPath}/Asshow"><img id="back" src="${pageContext.request.contextPath}/administrator/images/back.png"/></a>
	<div id="show">
	 
	<table width="99%" border="1" >
	     <tr class="head">
			 <td align="center" width="8%">账号</td>
			 <td align="center" width="20%">姓名</td>
			 <td align="center" width="5%">密码</td>
			 <td align="center" width="15%">邮箱</td>
		</tr>
	<c:forEach items="${users}" var="user">
		<tr >
			 <td class="inf" align="center" width="8%">${user.snu }</td>
			 <td class="inf" align="center" width="20%">${user.name }</td>
			 <td class="inf" align="center" width="5%">${user.password }</td>
			 <td class="inf" align="center" width="15%">${user.mail }</td>
		</tr>
	</c:forEach>
	</table>
</div>
<div id="edit">
		<br/>
		<h2>请选择修改用户信息种类及修改信息</h2>
		<form action="${pageContext.request.contextPath}/Asedit?snu=${snu }" method="post" >
           <select name="type">
		      <option value="snu">账号</option>
			  <option value="name">姓名</option>
			  <option value="password">密码</option>
			  <option value="mail">邮箱</option>
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