<%@page import="Student.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>更改密码</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="student" class="Student.student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
<%
Statement stmt=null;
Connection conn=null;

try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
       /* if(b!=null){
			  System.out.println("连接成功");
		  }  */
       int stuid=201701;
      /*  System.out.println("表单传来的数据学号："+stuid); */
       int stupwd=student.getstupwd();
/*        System.out.println("表单传来的数据密码："+stupwd); */
       String sql="UPDATE tb_student SET stupwd='"+stupwd+"' WHERE stuid='"+stuid+"'";
      /*  String sql1="Update sheet1 set "+Option1+"='"+num1+"'  where id='"+id1+"'"; */
       stmt.executeUpdate(sql);
       out.println("成功\n");

	   b.close(); 
	  
	   
  }catch(Exception e){
	   out.print("失败！");
	   e.printStackTrace();
   }


%>
<br>
<a href="http://localhost:8080/First/studentchgpwd/chgpwdindex.jsp">返回</a>

</body>
</html>