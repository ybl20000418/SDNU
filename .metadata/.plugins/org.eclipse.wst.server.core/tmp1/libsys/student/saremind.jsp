<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="team.wewon.libsys.domain.Borrow"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>saremind</title>
<link href="../student/css/remind.css" rel="stylesheet" type="text/css">
</head>

	<br><br>
   <c:forEach items="${borrows1 }" var="borrow1">
	   
	<h2>&nbsp;&nbsp;尊敬的用户：${borrow1.snu }&nbsp;&nbsp;
			请您尽快归还于 &nbsp;${borrow1.time }&nbsp;借的书号为&nbsp;${borrow1.ISBN }&nbsp;的书籍，并保持良好的借书记录
	</h2><hr>
	</c:forEach>
	
	
	
	
	
<body>
</body>
</html>