<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>abshow</title>
<link href="${pageContext.request.contextPath}/administrator/css/abshow.css" rel="stylesheet" type="text/css">
<script>
		
	function war(){
		alert("催他还书成功！");
	}
	</script>
</head>

<body>
	
	<div id="infor">
	   <h1>用户管理</h1>
	<table width="98%" border="1" >
	     <tr class="head">
			 
			 <td align="center" width="18%">借书人账号</td>
			 <td align="center" width="18%">ISBN</td>
			 <td align="center" width="25%">借书时间</td>
		      <td align="center" width="17%">催他还书</td>
			 
			 
		</tr>
	<c:forEach items="${borrows}" var="borrow">
		<tr >
			 <td width="18%" height="23" align="center" class="inf">${borrow.snu }</td>
			 <td class="inf" align="center" width="18%">${borrow.ISBN }</td>
			 <td class="inf" align="center" width="25%">${borrow.time }</td>
			
			 <td class="inf" align="center" width="17%"><a href="${pageContext.request.contextPath}/Abremind?snu=${borrow.snu }&ISBN=${borrow.ISBN }" onClick="war()">催他还书</a></td>
			
		</tr>
	</c:forEach>
	</table>
</div>
</body>
</html>