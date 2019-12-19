<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {
 background-image:url(file:///F:/Java/Web%20development%20project/First/WebContent/image/bj7.jpg);
  background-repeat: no-repeat;
 background-size:1920px 1080px;
 width:;
 height:100%;
}
</style>
<meta charset="utf-8">
<title>ISBN查找书籍</title>
</head>
<body>
<form action="searchbook.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>查找书籍 </h2>
    <hr>
   </td>
<tr>
    <td align="right">I &nbsp S &nbsp B &nbspN:</td>
    <td><input type="text" name="isbn"/></td>
</tr>
<tr>
    <td align="right">图书名称:</td>
    <td><input type="text" name="bookname"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="查找">
     </td>  
</tr>
</table>
</form>
</body>
</html>