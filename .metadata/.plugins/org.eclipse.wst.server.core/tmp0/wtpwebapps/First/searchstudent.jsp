<%@page import="Student.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生查询</title>
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
<jsp:useBean id="student" class="Student.student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
<%
ResultSet rs=null;
ResultSet rs1=null;
Statement stmt=null;
Connection conn=null;
try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
 	   int stuid=student.getstuid(); 
 	  String s1 = String.valueOf(stuid);
	   rs=stmt.executeQuery("select *  from tb_student");
		while(rs.next()) {
			int stuid1=rs.getInt("stuid");
			String s = String.valueOf(stuid1);
			String stuname=rs.getString("stuname");
			String department=rs.getString("department");
		if(s.matches(s1)) {

			%>
			<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>院系</th>
        <th>删除</th>
    </tr>
    </thead>
		    <tr align="center">
		      <td><%=stuid1%></td>
		      <td><%=stuname%></td> 
		       <td><%=department%></td> 
 <td><a href="${pageContext.request.contextPath}/deletestudentservlet?stuid=<%=stuid1%>">删除</a></td>
   </tr>
		</table>
			<%
		}
			}
	   b.close(); 	   
  }catch(Exception e){
	   out.print("ERROR！");
	   e.printStackTrace();
   }
%>
<br>
</body>
</html>