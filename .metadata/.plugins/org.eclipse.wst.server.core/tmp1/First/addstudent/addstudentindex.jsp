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
<form action="addstudent.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>添加学生信息 </h2>
    <hr>
   </td>
<tr>
    <td align="right">学生学号:</td>
    <td><input type="text" name="stuid"/></td>
</tr>
<tr>
    <td align="right">学生姓名:</td>
    <td><input type="text" name="stuname"/></td>
</tr>

<tr>
    <td align="right">所在院系:</td>
    <td><input type="text" name="departement"/></td>
</tr>
<tr>
    <td align="right">登录密码:</td>
    <td><input type="text" name="stupwd"/></td>
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