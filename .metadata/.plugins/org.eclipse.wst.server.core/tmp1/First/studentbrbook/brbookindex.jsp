<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {
 background-image:url(../image/bj7.jpg);
 background-repeat: no-repeat;
 background-size:1920px 1080px;
 width:;
 height:100%;
}
</style>
<meta charset="utf-8">
<title>借阅书籍</title>
</head>
<body>
<form action="brbook.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>借阅书籍 </h2>
    <hr>
    </td>
</tr>
<tr>
    <td align="right">学生学号:</td>
    <td><input type="text" name="brid"/></td>
</tr>
<tr>
    <td align="right">姓 &nbsp &nbsp   &nbsp &nbsp名:</td>
    <td><input type="text" name="brname"/></td>
</tr>

<tr>
    <td align="right">I&nbsp &nbspS&nbspB&nbspN&nbsp:</td>
    <td><input type="text" name="brbookid"/></td>
</tr>
<tr>
    <td align="right">书 &nbsp &nbsp   &nbsp &nbsp名:</td>
    <td><input type="text" name="brbookname"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="借阅">
     </td>  
</tr>
</table>
</form>
</body>
</html>