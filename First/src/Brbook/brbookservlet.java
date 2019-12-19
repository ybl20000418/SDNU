package Brbook;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

import Book.book1;
import Brbook.brbook1;
import Student.student;
/**
 * Servlet implementation class brbookservlet
 */
@WebServlet("/brbookservlet")
public class brbookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public brbookservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		设置对客户端请求和数据库取值时的编码
		request.setCharacterEncoding("UTF-8");
//		指定服务器响应给浏览器的编码,并且修改浏览器的解码方式
		response.setContentType("text/html;charset=utf-8");
		
//      从表单获得数据
		 String isbn= request.getParameter("isbn");
		 String bookname= request.getParameter("bookname");
		 String count = request.getParameter("count");
		 PrintWriter out = response.getWriter();
		 String retime="1.19";
		 int stuid=201701;
		 int value1=Integer.parseInt(count)-1;
		 if(value1<0) {
			 PrintWriter out1 = response.getWriter();
			 out1.print("该书没有余量<br>");
		 }else {
			 java.sql.Statement stmt=null;
			 Connection conn=null;

			 try{
			 	  
			 	   Class.forName("com.mysql.jdbc.Driver");
			 	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
			 	   System.out.println("数据库连接成功");
			 	   stmt=b.createStatement();
			 	   String sql="UPDATE tb_books SET count='"+value1+"' WHERE isbn='"+isbn+"'"; 
			 	   stmt.executeUpdate(sql);
			 	  String sql1="insert into brbooks values('"+stuid+"','"+isbn+"','"+bookname+"','"+retime+"')";
			 	 stmt.executeUpdate(sql1);
			 	   b.close(); 	   
			   }catch(Exception e){
			 	 
			 	   e.printStackTrace();
			    }
			 
		 }
		
		 request.getRequestDispatcher("/FindServlet").forward(request,response);
		    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
