<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<!-- TemplateBeginEditable name="doctitle" -->
<title>学生主页</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
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
		background-image:url(file:///F:/Java/Web%20development%20project/First/WebContent/image/bj4.png);
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
		width: 100%;
		height: 50px;
		display: inline-block;
		text-decoration: none;	
		background-color:#50c9ef;
		border-radius: 5px;
		padding-top:10px;
		color: #fff;
		text-shadow: 0 2px 1px rgba(0,0,0,.2);
		margin-right: 5px;
		border-bottom: 1px solid #fff;
		margin-top: 3px;
		
		}
	.nav{
		text-align: center;	
		margin-top: 10px;
		}
	.nav a{
		
	}
	</style>
</head>
<body>
<header>	
	<p>
		学生用户界面
	</p>
</header>
<hr>
<div class="nav">
<a href="http://localhost:8080/First/studentbrbook/brbookindex.jsp">借书</a>
<a href="http://localhost:8080/First/studentrebook/rebookindex.jsp">还书</a>
<a href="http://localhost:8080/First/FindServlet">查阅图书</a>
<a href="http://localhost:8080/First/studentchgpwd/chgpwdindex.jsp">修改密码</a>
</div>
</body>
</html>