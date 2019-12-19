<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="team.wewon.libsys.domain.User"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>stmain</title>
<link href="css/stmain.css" rel="stylesheet" type="text/css">
</head>

<body>
        <% 
				User user = (User) request.getSession().getAttribute("user");
				
				%>
    <div id="top">
		      ${user.snu}的主页
		   <a href="../main/main.jsp"><img id="back" src="images/back.png"/></a>	   
    </div>
	<div id="left">
		<ul>
               <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Sinshow" target="content">个人资料</a></li>
			<hr>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="sborrow.jsp" target="content">借书</a></li>
			<hr>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Sshowbors" target="content">还书</a></li>
			<hr>
			     <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Sbremind" target="content">还书提醒</a></li>
			<hr>
		</ul>
	</div>
    <div id="right">
		  	<iframe id="main"  name="content" frameborder="1" scrolling="yes"></iframe>
	</div>
	<script type="text/javascript" src="../main/js/main.js"></script>
</body>
</html>
