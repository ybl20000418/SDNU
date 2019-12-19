<%@page import="Student.*"%>
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
<form class="form-inline definewidth m20" action="http://localhost:8080/First/searchstudent.jsp" method="post">
    <font color="#33ccff"><strong>学生信息查询：</strong></font>
    &nbsp &nbsp</button><input type="text" name="stuid"/><button type="submit" class="btn btn-primary">查询</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>院系</th>
        <th>密码</th>
        <th>最大可借书</th>
        <th>删除</th>
    </tr>
    </thead>
        <% 
List<student>list=(List<student>)request.getAttribute("list");
if(list==null||list.size()<1){
	/* out.println("没有数据！"); */
}else{
	for(student stu:list){
		%>
   <tr align="center">
    <td><%=stu.getstuid()%></td>
    <td><%=stu.getstuname()%></td>
     <td><%=stu.getdepartment()%></td>
    <td><%=stu.getstupwd()%></td>
     <td><%=stu.getmaxbook()%></td>
   <td><a href="${pageContext.request.contextPath}/deletestudentservlet?stuid=<%=stu.getstuid()%>">删除</a></td>
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
