<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>登陆界面</title>
    <link rel="stylesheet" href="css/login.css"  type="text/css">
  </head>
  <body>
    <a href="main.jsp"><img id="back" src="images/back.png"/></a>
<form class="box" action="${pageContext.request.contextPath}/Login" method="post">
  <h1>登录</h1>
	<select name="ID">
		      <option value="student">学生</option>
			  <option value="administrator">管理员</option>
	</select>
  <input type="text" name="account" placeholder="account">
  <input type="password" name="password" placeholder="Password">
  <input type="submit" name="" value="Login">
	<a href="../student/sregister.jsp">没有账号注册一个???</a>
</form>
  </body>
</html>
