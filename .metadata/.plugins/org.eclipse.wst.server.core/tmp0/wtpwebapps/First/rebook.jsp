<%@page import="Rebook.*"%>
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
<jsp:useBean id="rebook" class="Rebook.rebook"></jsp:useBean>
<jsp:setProperty property="*" name="rebook"/>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>学号</th>
        <th>图书名称</th>
        <th>ISBN</th>
        <th>还书时间</th>
        <th>还书</th>
        <th>续借</th>
    </tr>
    </thead>
        <% 
List<rebook>list=(List<rebook>)request.getAttribute("list");
if(list==null||list.size()<1){
	/* out.println("没有数据！"); */
}else{
	for(rebook book:list){
		%>
   <tr align="center">
      <td><%=book.getstuid()%></td>
       <td><%=book.getbookname()%></td>
      <td><%=book.getisbn()%></td>
      <td><%=book.getretime()%></td>
      <td><a href="${pageContext.request.contextPath}/midrebookservlet?stuid=<%=book.getstuid()%>&isbn=<%=book.getisbn()%>">还书</a></td>
      <td><a href="${pageContext.request.contextPath}/contiuebrbookservlet?stuid=<%=book.getstuid()%>&isbn=<%=book.getisbn()%>">续借</a></td>
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
