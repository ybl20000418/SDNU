<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {
 background-image:url(file:///F:/Java/Web%20development%20project/First/WebContent/image/bj7.jpg);
}
</style>
<meta charset="utf-8">
<title>删除书目信息</title>
</head>
<body>
<form action="#" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>删除书目信息 </h2>
    <hr>
   </td>
<tr>
    <td align="right">索  书  号:</td>
    <td><input type="text" name="id"/></td>
</tr>
<tr>
    <td align="right">图书名称:</td>
    <td><input type="text" name="name"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="删除">
     </td>  
</tr>
</table>
</body>
</html>