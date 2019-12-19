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
<title>修改密码</title>
</head>
<body>
<form action="changepassword.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>修改密码 </h2>
    <hr>
   </td>

<tr>
    <td align="right">之前密码:</td>
    <td><input type="text" name="maxbook"/></td>
</tr>
<tr>
    <td align="right">更改密码:</td>
    <td><input type="text" name="stupwd"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="修改">
     </td>  
</tr>
</table>
</form>
</body>
</html>