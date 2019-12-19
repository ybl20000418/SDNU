package Rebook;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Rebook.rebook;
import java.util.List;

import java.sql.*;
import java.util.ArrayList;
/**
 * Servlet implementation class Rebookservletn
 */
@WebServlet("/Rebookservletn")
public class Rebookservletn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rebookservletn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statement stmt=null;
		Connection conn=null;
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			   Connection b=DriverManager.getConnection("jdbc:mysql://localhost:3307/four?useUnicode=true&characterEncoding=GBK","root","root");
			   stmt=b.createStatement();
			   if(stmt!=null){
				   System.out.println("数据库连接成功！");
			   }
			   String sql="select * from brbooks";
			   ResultSet rs=stmt.executeQuery(sql);
			   List<rebook>list=new ArrayList<rebook>();
			   while(rs.next()) {
				   rebook book=new rebook();
				   book.setisbn(rs.getString("isbn"));
				   book.setbookname(rs.getString("bookname"));
				   book.setstuid(rs.getInt("stuid"));
				   book.setretime(rs.getString("retime"));
				   list.add(book);
			   }
			   request.setAttribute("list", list);
			   rs.close();
			   stmt.close();
			   conn.close();	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
     request.getRequestDispatcher("rebook.jsp").forward(request,response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
