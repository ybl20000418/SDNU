package Rebook;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
 * Servlet implementation class contiuebrbookservlet
 */
@WebServlet("/contiuebrbookservlet")
public class contiuebrbookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contiuebrbookservlet() {
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
		 String isbn= request.getParameter("isbn");
		 java.sql.Statement stmt=null;
		 Connection conn=null;
		 ResultSet rs=null;
		 try{
		 	  
		 	   Class.forName("com.mysql.jdbc.Driver");
		 	   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
		 	    System.out.println("数据库连接成功mid");
		 	   stmt=b.createStatement();
		 	   String retime="1.23";
		 	   String sql="UPDATE brbooks SET retime='"+retime+"' WHERE isbn='"+isbn+"'"; 
		 	   stmt.executeUpdate(sql);
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
