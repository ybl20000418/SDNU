<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
		background-image:url(${pageContext.request.contextPath}/image/bj1.jpg);
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
	nav{
		border:1px solid #ccc;
		padding: 4px;
	}
	nav a{
		text-decoration: none;
		color:#fff;
		text-shadow: 0 2px 1px rgba(0,0,0,.2);
	}
	.row{
		height:90px;
		display:flex;
		border-radius: 5px;
		overflow: hidden;
		
	}
	.row2{
		height:90px;
		display:flex;
		border-radius: 5px;
		overflow: hidden;
		
	}
	.row3{
		height:90px;
		display:flex;
		border-radius: 5px;
		overflow: hidden;
		
	}
	
	.row div{
		height:100%;
		flex: 1;
		background: #FF697A;
		border-right: 1px solid #fff;
	}
	.row3 div{
		height:100%;
		flex: 1;
		background:#3495ff;
		border-right: 1px solid #fff;
	}
	.row2 div{
		height:100%;
		flex: 1;
		background:#3caf1d;
		border-right: 1px solid #fff;
	}
	.row33 div:nth-child(3){
		border-right:0;
		
	}
	.row div a{
		display:block;
		width:100%;
		height:100%;
	}
	.row2 div a{
		display:block;
		width:100%;
		height:100%;
	}
	.row3 div a{
		display:block;
		width:100%;
		height:100%;
	}
	.row a{
		text-align:center;
		line-height: 45px;
	}
	.row2 a{
		text-align:center;
		line-height: 45px;
	}
	.row3 a{
		text-align:center;
		line-height: 45px;
	}
	.row11 a{
		padding-top: 20px;
	}
	.row33{
		display:flex;
		flex-direction:column;
	}
	.row33 a{
		flex:1;
		text-align: center;
		line-height: 45px;
	}
	.row33 a{
		border-bottom:1px solid #fff;
	}
	.second{
		padding-top:5px;
		
	}
	.thrid{
		padding-top:5px;
	}
</style>
</head>
<body>
<header>
	<p>资源服务功能</p>
	</header>
<div class="biggest">
<nav>
<!--第一部分-->
<div class="first">
		<div class="row">
		<div class="row11">
			<a href="#">
			服务功能	
			</a>
			</div>
		<div class="row33">
			<a href="http://localhost:8080/First/searchbook/searchbookindex.jsp">
				图书查阅
			</a>
			<a href="#">
				电子资源
			</a>
			</div>
		<div class="row33">
			<a href="http://localhost:8080/First/logindwonload/login1.jsp">
			新生培训
			</a>
			<a href="#">
			学术检索
			</a>
			</div>
		</div>
		</div>
<!--第二部分-->
<div class="second">
<div class="row2">
		<div class="row11">
			<a href="#">
			借阅服务
			</a>
			</div>
		<div class="row33">
			<a href="#">
				借阅规则
			</a>
			<a href="#">
				借阅办理
			</a>
			</div>
		<div class="row33">
			<a href="#">
			阅读推荐
			</a>
			<a href="#">
			馆际互借
			</a>
			</div>
	   </div>
	</div>
<!--第三部分-->
<div class="thrid">
	
		<div class="row3">
		<div class="row11">
			<a href="#">
			研究支持	
			</a>
			</div>
		<div class="row33">
			<a href="#">
				学科服务
			</a>
			<a href="#">
				数据服务
			</a>
			</div>
		<div class="row33">
			<a href="#">
			科技查新
			</a>
			<a href="#">
			分析报告
			</a>
			</div>
		</div>
	</div>
	
</nav>
	</div>
</body>
</html>
