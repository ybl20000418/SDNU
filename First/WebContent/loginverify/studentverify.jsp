<%@page import="Book1.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生信息验证</title>
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
	   /* if(stmt!=null){
		   System.out.println("数据库连接成功！");
	   } */
       int stuid=student.getstuid();
       int stupwd=student.getstupwd();
       /* System.out.println(stuid+"表单传输学号");
       System.out.println(stupwd+"表单传输密码"); */
       rs=stmt.executeQuery("select *  from tb_student");
       while(rs.next()) {
    	int stuid2=rs.getInt("stuid");
    	int stupwd2=rs.getInt("stupwd");
    	/* System.out.println(stuid2);
    	System.out.println(stupwd2+"数据库取得"); */
    	if (stuid==stuid2&&stupwd==stupwd2) {
    		response.sendRedirect("http://localhost:8080/First/managefirstpage.jsp");
			} else {
				%>
				登录信息有误！
				<a href="http://localhost:8080/First/logindwn/login1.jsp">点击此处返回</a>				<% 
    		/* 	System.out.print("登录信息有误！");  */
	}
}
	   b.close(); 
	  
  }catch(Exception e){
	   out.print("输入错误！");
	   e.printStackTrace();
   }


%>
</body>
</html>