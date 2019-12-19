<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>sborrow</title>
<link href="${pageContext.request.contextPath}/student/css/sborrow.css" rel="stylesheet" type="text/css">
<script>
		
	function war(){
		alert("借书成功！");
	}
	</script>
</head>

<body>
<div id="search">
      <a href="/libsys/main/main.jsp"><img id="back" src="${pageContext.request.contextPath}/student/images/back.png"/></a>
<form action="${pageContext.request.contextPath}/Sborrowshow" method="post" >
  <select name="type">
		      <option value="kind">图书分类号</option>
			  <option value="name">书名</option>
			  <option value="author">作者</option>
			  <option value="publishhouse">出版社</option>
			  <option value="publishtime">出版时间</option>
			  <option value="ISBN">ISBN</option>
			  <option value="count">复本量</option>
		</select>
			<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input name="value" id="value" type="text"/>
			</p>
	    <p><input id="sear" value="" type="submit"/></p>
</form>
</div>
<div id="infor">
	<table width="100%" border="1" >
	     <tr class="head">
			 <td align="center" width="12%">图书分类号</td>
			 <td align="center" width="18%">书名</td>
			 <td align="center" width="12%">作者</td>
			 <td align="center" width="16%">出版社</td>
			 <td align="center" width="15%">出版时间</td>
			 <td align="center" width="13%">ISBN</td>
			 <td align="center" width="9%">复本量</td>
			 <td align="center" width="5%">借书</td>
			
		</tr>
	<c:forEach items="${boinfs}" var="book">
		<tr >
			 <td class="inf" align="center" width="12%">${book.kind }</td>
			 <td class="inf" align="center" width="18%">${book.name }</td>
			 <td class="inf" align="center" width="12%">${book.author }</td>
			 <td class="inf" align="center" width="16%">${book.publishhouse }</td>
			 <td class="inf" align="center" width="15%">${book.publishtime }</td>
			 <td class="inf" align="center" width="13%">${book.ISBN }</td>
			 <td class="inf" align="center" width="9%">${book.count }</td>
			 <td class="inf1" align="center" width="5%">
				 <a href="${pageContext.request.contextPath}/Borrow?id=${book.ISBN }&count=${book.count }&value=${value }&type=${type }"
				 onClick="war()">借书</a>
			</td>
		</tr>
	</c:forEach>
	</table>
</div>
</body>
</html>