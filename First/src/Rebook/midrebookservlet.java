package Rebook;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mysql.jdbc.Statement;

import Book.book1;
import Brbook.brbook1;
import Student.student;
import Rebook.*;
/**
 * Servlet implementation class midrebookservlet
 */
@WebServlet("/midrebookservlet")
public class midrebookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public midrebookservlet() {
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
	    String stuid= request.getParameter("stuid");
		 String isbn= request.getParameter("isbn");
		 PrintWriter out = response.getWriter();
//          out.print(isbn+"这是前面穿过来的ISBN<br>");
//          out.print(stuid+"这是前面穿过来的stuid<br>");
//          out.print(bookname+"这是前面穿过来的bk<br>");
		 java.sql.Statement stmt=null;
		 Connection conn=null;
		 ResultSet rs=null;

		 try{
		 	  
		 	   Class.forName("com.mysql.jdbc.Driver");
		 	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
		 	    System.out.println("数据库连接成功mid");
		 	   stmt=b.createStatement();
		 	 
		 	   System.out.println("要成功了！");
		 	 
		 	   String sql="UPDATE tb_books SET count=count+1 WHERE isbn='"+isbn+"'"; 
		 	   stmt.executeUpdate(sql);
   	 	       String sql1="delete from brbooks where isbn='"+isbn+"'";
            	 stmt.executeUpdate(sql1);
		 	   b.close(); 	   
		   }catch(Exception e){
		 	 
		 	   e.printStackTrace();
		    }
		 request.getRequestDispatcher("/Rebookservletn").forward(request,response);
		    
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
