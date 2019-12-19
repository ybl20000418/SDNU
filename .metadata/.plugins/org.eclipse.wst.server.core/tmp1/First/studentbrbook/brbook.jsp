<%@page import="Brbook.brbook1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="Book.book1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>借书处理</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="brbook1" class="Brbook.brbook1"></jsp:useBean>
<jsp:setProperty property="*" name="brbook1"/>
<%
ResultSet rs=null;
ResultSet rs1=null;
Statement stmt=null;
Connection conn=null;

try{
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
	   stmt=b.createStatement();
/* 	   if(b!=null){
			  System.out.println("连接成功");
		  } */
       int month,date;
        Calendar now = Calendar.getInstance();
		now = Calendar.getInstance();
		month = now.get(Calendar.MONTH)+1;
		date = now.get(Calendar.DATE);
/*         SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		String date=df.format(new Date());
		int month1 = Integer.valueOf(date.charAt(5)).intValue();
		int month2=Integer.valueOf(date.charAt(6)).intValue();
		int date1=Integer.valueOf(date.charAt(8)).intValue();
		int date2=Integer.valueOf(date.charAt(9)).intValue();
		System.out.println("月份十位："+month1+"月份个位"+month2);
		System.out.println("日份十位："+date1+"日份个位"+date2);
		int summonth=month1*10+month2;
		int sumdate=date1*10+date2;
		int summonth1=summonth+1;
		int sumdate1=30-sumdate;
		 */
		 int brmonth=month;
		 int brdate=date;
		 int brid=brbook1.getbrid();
		 String brname=brbook1.getbrname();
		 String brbookid=brbook1.getbrbookid();
		 String brbookname=brbook1.getbrbookname();
		 int remonth=brmonth+1;
		 int redate=brdate;
		 int fine=0;
	   String sql="insert into tb_brbooks values('"+brmonth+"','"+brdate+"','"+brid+"','"+brname+"','"+brbookid+"','"+brbookname+"','"+remonth+"','"+redate+"','"+fine+"')";
	    stmt.executeUpdate(sql);
	   /* rs=stmt.executeQuery("select *  from tb_books");
	    while(rs.next()) {
	    	int jbid2=rs.getInt("jbid");
	    	int jbpwd2=rs.getInt("jbpwd");
	    	/* System.out.println(jbid2+" "+jbpwd2); */
	    	
	    	/* if (jbid==jbid2&&jbpwd==jbpwd2) {
	    		response.sendRedirect("http://localhost:8080/First/adminaddbook/adminhome.jsp");
				} else { */
					
					/* （此处上下插入%》）登录信息有误！
					<a href="http://localhost:8080/First/login/adminlogin.jsp">点击此处返回</a>	 */			 
	    		/* 	System.out.print("登录信息有误！");  */
	/* 	}
	} */
	    
	    
	    out.println("成功借阅了书籍！\n");
	   b.close(); 
	  
	   
  }catch(Exception e){
	   out.print("图书借阅失败！");
	   e.printStackTrace();
   }


%>
<br>
<a href="brbookindex.jsp">返回</a>
</body>
</html>