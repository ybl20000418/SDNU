<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>登陆界面</title>
    <link href="css/sregister.css" rel="stylesheet" type="text/css">
  </head>
  <body>
   <a href="../main/login.jsp"><img id="back" src="images/back.png"/></a>
<form class="box" action="${pageContext.request.contextPath}/Sregister" method="post">
  <h1>学生注册</h1>
  <input type="text" name="name" placeholder="Username">
  <input type="text" name="snu" placeholder="snu">
  <input type="password" name="password" placeholder="Password">
  <input type="text" name="mail" placeholder="mail">
  <input type="submit" name="" value="register">
</form>  
  </body>
</html>