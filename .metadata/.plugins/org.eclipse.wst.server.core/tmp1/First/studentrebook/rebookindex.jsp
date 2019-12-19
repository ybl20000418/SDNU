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
<title>归还图书</title>
</head>
<body>
<form action="rebook.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>归还图书 </h2>
    <hr>
   </td>
</tr>
<tr>
    <td align="right">&nbsp学号&nbsp:</td>
    <td><input type="text" name="brid"/></td>
</tr>
<tr>
    <td align="right">&nbsp姓名&nbsp:</td>
    <td><input type="text" name="brname"/></td>
</tr>
<tr>
    <td align="right">书 &nbsp &nbsp   &nbsp &nbsp名:</td>
    <td><input type="text" name="brbookname"/></td>
</tr>
    <td align="right">&nbsp ISBN&nbsp:</td>
    <td><input type="text" name="brbookid"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="还书">
     </td>  
</tr>
</table>
</form>
</body>
</html>