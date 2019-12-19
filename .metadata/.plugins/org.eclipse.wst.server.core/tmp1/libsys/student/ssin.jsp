<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>sinf</title>
<link href="${pageContext.request.contextPath}/student/css/sinf.css" rel="stylesheet" type="text/css">
<script>
		function war(){
			alert("修改成功！")
		}
	</script>
</head>

<body>
	<div id="sinf">
		<br>
		<c:forEach items="${usernow}" var="user">
		
			<h2> 用户账号 : &nbsp;  ${user.snu }</h2>
			<h2> 用户姓名 : &nbsp;  ${user.name }</h2> 
			<h2> 用户密码 : &nbsp;  ${user.password }</h2>
			<h2> 用户邮箱 : &nbsp;  ${user.mail }</h2> 
		
	</c:forEach>
	</div>
	<div id="change">
		<br>
		<h1>学生个人信息修改</h1>
		<form action="${pageContext.request.contextPath}/SinfChange" method="post" >
           <select name="type">
		      <option value="name">姓名</option>
			  <option value="password">密码</option>
			  <option value="mail">邮箱</option>
		   </select>
			<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input name="value" id="value" type="text"/>
			</p>
	    <p><input id="sear" onClick="war()" value="" type="submit"/></p>
</form>
	</div>
</body>
</html>
