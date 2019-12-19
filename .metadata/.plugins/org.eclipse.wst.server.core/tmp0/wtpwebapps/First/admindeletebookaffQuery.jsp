<%@page import="Book.book1"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="description" content="Creating Modal Window with Twitter Bootstrap">
<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap.css" rel="stylesheet"> 
	<link rel="stylesheet" type="text/css" href="CSS/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="CSS/style.css" />
    <script type="text/javascript" src="./Js/jquery2.js"></script>
    <script type="text/javascript" src="./Js/jquery2.sorted.js"></script>
    <script type="text/javascript" src="./Js/bootstrap.js"></script>
    <script type="text/javascript" src="./Js/ckform.js"></script>
    <script type="text/javascript" src="./Js/common.js"></script>
    <style type="text/css">
        body {
            padding-bottom: 40px;
            background-color:#e9e7ef;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="book1" class="Book.book1"></jsp:useBean>
<jsp:setProperty property="*" name="book1"/>
<form class="form-inline definewidth m20" action="http://localhost:8080/First/searchbook.jsp" method="post">
    <font color="#33ccff"><strong>图书查询：</strong></font>
    &nbsp &nbsp</button><input type="text" name="isbn"/><button type="submit" class="btn btn-primary">查询</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>ISBN</th>
        <th>图书名称</th>
        <th>作者</th>
        <th>出版社</th>
        <th>图书余量</th>
        <th>借阅</th>
    </tr>
    </thead>
        <% 
List<book1>list=(List<book1>)request.getAttribute("list");
if(list==null||list.size()<1){
	/* out.println("没有数据！"); */
}else{
	for(book1 book:list){
		%>
   <tr align="center">
      <td><%=book.getisbn()%></td>
      <td><%=book.getbookname()%></td>
      <td><%=book.getbookauthor()%></td>
      <td><%=book.getpubhouse()%></td>
      <td><%=book.getcount()%></td>
      <td><a href="${pageContext.request.contextPath}/admindeletebookServlet?isbn=<%=book.getisbn()%>">删除</a></td>
   </tr>
<%
	}
}
%>
       </table>

</body>
</html>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap-tooltip.js"></script>
<script src="./js/bootstrap-popover.js"></script>
<script>
$(function ()
{ $("#xiangqing").popover();
});
</script>
