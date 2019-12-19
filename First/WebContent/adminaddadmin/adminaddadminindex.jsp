<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {

  background-repeat: no-repeat;
 background-size:1920px 1080px;
 width:;
 height:100%;
}
</style>
<meta charset="utf-8">
<title>添加学生信息</title>
</head>
<body>
<form action="adminaddadmin.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>添加管理员 </h2>
    <hr>
   </td>
<tr>
    <td align="right">工号:</td>
    <td><input type="text" name="jbid"/></td>
</tr>
<tr>
    <td align="right">姓名:</td>
    <td><input type="text" name="jbname"/></td>
</tr>
<tr>
    <td align="right">登录密码:</td>
    <td><input type="text" name="jbpwd"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="添  加">
     </td>  
</tr>
</table>
</form>
</body>
</html>