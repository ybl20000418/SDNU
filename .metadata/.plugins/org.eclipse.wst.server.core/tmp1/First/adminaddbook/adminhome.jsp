<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<title>Admin</title>
	<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	body{
		min-width: 320px;
		max-width: 540px;
		/*background-color:antiquewhite;*/
		margin: 0 auto;
		height: 1000;
		font: 400 16px/1.5 PingFangSC-regular,Tahoma,"Lucida Grande",Verdana,"Microsoft Yahei",STXihei,hei;
		background-image:url(file:///F:/Java/Web%20development%20project/First/WebContent/image/bj2.png);
		background-size：contain；
		
	}	
	header{
		height:83.5px;
	}
	header img{
		height:100%;
		width:auto;

	}
	header p{
		text-align: center;
		text-shadow: 0 2px 1px rgba(0,0,0,.2);
		font: 400 32px/1.5 PingFangSC-regular,Tahoma,"Lucida Grande",Verdana,"Microsoft Yahei",STXihei,hei;
		padding-top:20px;
		
	}
	a{
		width: 120px;
		height: 50px;
		display: inline-block;
		text-decoration: none;	
		background-color: #F6FB1F;
		border-radius: 5px;
		padding-top:10px;
		color: #fff;
		text-shadow: 0 2px 1px rgba(0,0,0,.2);
		margin-right: 7px;
		}
	.nav{
		text-align: center;	
		margin-top: 10px;
		}
	.nav a:nth-child(5){
		margin-top:10px ;
	</style>
</head>

<body>
	<header>
		<p>管理员界面</p>
	</header>
	<hr>
	<div class="nav">
	<a href="http://localhost:8080/First/adminaddbook/bookindex.jsp">添加图书</a>
	<a href="http://localhost:8080/First/admindeletebook/deletebookindex2.jsp">删改图书</a>
	<a href="http://localhost:8080/First/addstudent/addstudentindex.jsp">添加学生信息</a>
	<a href="http://localhost:8080/First/deletestudent/deletestudentindex.jsp">删改学生信息</a>
	<!-- <a href="http://localhost:8080/First/deletestudent/deletestudentindex.jsp">删改学生信息</a> -->
	</div>
</body>
</html>
