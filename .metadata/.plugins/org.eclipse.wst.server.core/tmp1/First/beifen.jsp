<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,DAO.beihuan"
    pageEncoding="utf-8"%>
 <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>数据库备份</title>
<link rel="stylesheet" type="text/css" href="static/layui/css/layui.css" />
<style>body{
				
				background-size: cover;
				height:100%;
				width: 100%;
				background-repeat: no-repeat;
			}</style>
</head>
<body>
<%  
beihuan com = new beihuan();  
String ip = "localhost";//ip地址  
String username = "root";//MySQL数据库的用户名  
String password = "root";//MySQL数据库的密码  
String database = "four";//数据库名字  
String filename = "beifen";
String url = "D:/";//备份的目的地址  
boolean check = com.backup(ip, username, password, url, filename, database);

if(check){  
 %>  
<script type="text/javascript">
			
				alert("数据库备份成功");
			
</script>
 <%} %>  
  </body>  
</body>
</html>
