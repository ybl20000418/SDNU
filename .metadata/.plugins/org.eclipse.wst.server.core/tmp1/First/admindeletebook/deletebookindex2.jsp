<%@page import="Book1.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
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
<title>删除图书信息</title>
</head>
<body>
<form action="deletebook.jsp" method="post" onsubmit="return check(this)";>
<table align="center" width="450">
<tr>
   <td align="center" colspan="2">
    <h2>删除书目信息 </h2>
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
    <td align="right">出 &nbsp版 &nbsp社:</td>
    <td><input type="text" name="pubhouse"/></td>
</tr>

<tr>
    <td align="right">I &nbsp S &nbsp B &nbsp N:</td>
    <td><input type="text" name="isbn"/></td>
</tr>
<tr>
    <td align="center" colspan="2">
       <input type="submit" value="删除">
     </td>  
</tr>
</table>
</form>
</body>
</html>