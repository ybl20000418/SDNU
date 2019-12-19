<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="team.wewon.libsys.domain.User"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>admain</title>
<link href="css/admain.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="top">
<% 
				User user = (User) request.getSession().getAttribute("user");
				
				%>
	        欢迎您，图书管理员：${user.snu } &nbsp;
		 <a  href="${pageContext.request.contextPath}/Slogout"><img id="logout" src="images/logout1.png"/></a>
	</div>
	<div id="left">
	  <ul>
               <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="asearch.jsp" target="content">书籍管理</a></li>
			<hr>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Asshow" target="content">用户管理</a></li>
			<hr>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Abshow" target="content">借书管理</a></li>
			<hr>
		</ul>v
	</div>
    <div id="right">
		<iframe id="main"  name="content" frameborder="1" scrolling="yes"></iframe>
	</div>
	<div id="bottom">
	
	</div>
</body>
</html>