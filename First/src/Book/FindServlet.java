package Book;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import java.sql.*;
import java.util.ArrayList;
/**
 * Servlet implementation class FindServlet
 */
@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statement stmt=null;
		Connection conn=null;
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
			   stmt=b.createStatement();
			  /* if(stmt!=null){
				   System.out.println("数据库连接成功！");
			   }*/
			   String sql="select * from tb_books";
			   ResultSet rs=stmt.executeQuery(sql);
			   List<book1>list=new ArrayList<book1>();
			   while(rs.next()) {
				   book1 book=new book1();
				   book.setisbn(rs.getString("isbn"));
				   book.setbookname(rs.getString("bookname"));
				   book.setbookauthor(rs.getString("bookauthor"));
				   book.setpubhouse(rs.getString("pubhouse"));
				   book.setcount(rs.getInt("count"));
				   list.add(book);
			   }
			   request.setAttribute("list", list);
			   rs.close();
			   stmt.close();
			   conn.close();	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
     request.getRequestDispatcher("afficheQuery.jsp").forward(request,response);
	}


}
