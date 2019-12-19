<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>图书查阅ISBN</title>
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
<%
ResultSet rs=null;
ResultSet rs1=null;
Statement stmt=null;
Connection conn=null;
try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
 	   String isbn=book1.getisbn(); 
	   String bookname2=book1.getbookname();
	   rs=stmt.executeQuery("select *  from tb_books");
		while(rs.next()) {
			String isbn1=rs.getString("isbn");
			String bookname1=rs.getString("bookname");
			String bookauthor1=rs.getString("bookauthor");
			String pubhouse1=rs.getString("pubhouse");
			int count1=rs.getInt("count");
			
		if(isbn.matches(isbn1)) {

			%>
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
		    <tr align="center">
		      <td><%=isbn%></td>
		      <td><%=bookname1%></td> 
		       <td><%=bookauthor1%></td> 
		      	      <td><%=pubhouse1%></td> 
		      	      	      <td><%=count1%></td> 
<td><a href="${pageContext.request.contextPath}/brbookservlet?isbn=<%=isbn%>&count=<%=count1%>&bookname=<%=bookname1%>">借阅</a></td> 
		   </tr>
		</table>
			<%
		}
			}
	   b.close(); 	   
  }catch(Exception e){
	   out.print("图书查阅失败！");
	   e.printStackTrace();
   }
%>
<br>
</body>
</html>