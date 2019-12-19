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
<title>添加书目界面</title>
</head>
<body>
<form action="addbook.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>添加书目信息 </h2>
    <hr>
   </td>
<tr>
    <td align="right">图书分类号:</td>
    <td><input type="text" name="classnum"/></td>
</tr>
<tr>
    <td align="right">书 &nbsp &nbsp   &nbsp &nbsp名:</td>
    <td><input type="text" name="bookname"/></td>
</tr>

<tr>
    <td align="right">作 &nbsp &nbsp   &nbsp &nbsp者:</td>
    <td><input type="text" name="bookauthor"/></td>
</tr>
<tr>
    <td align="right">出 &nbsp版 &nbsp社:</td>
    <td><input type="text" name="pubhouse"/></td>
</tr>
  <tr>
    <td align="right">&nbsp 出版时间&nbsp:</td>
    <td><input type="text" name="pubdate"/></td>
</tr>
<tr>
    <td align="right">&nbsp ISBN&nbsp:</td>
    <td><input type="text" name="isbn"/></td>
</tr>
<tr>
    <td align="right">&nbsp复本量&nbsp:</td>
    <td><input type="text" name="count"/></td>
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