package Book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Book.book1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Findnewservlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
    public Findnewservlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Statement stmt=null;
		Connection conn=null;
		try {
			String isbn="0000280184";
			 Class.forName("com.mysql.jdbc.Driver");
			   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
			   stmt=b.createStatement();
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
				   if(isbn.matches(rs.getString("isbn"))) {list.add(book);}
				   
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
