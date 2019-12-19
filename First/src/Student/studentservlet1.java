package Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import java.sql.*;
import java.util.ArrayList;
/**
 * Servlet implementation class studentservlet1
 */
@WebServlet("/studentservlet1")
public class studentservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentservlet1() {
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
			   String sql="select * from tb_student";
			   ResultSet rs=stmt.executeQuery(sql);
			   List<student>list=new ArrayList<student>();
			   while(rs.next()) {
				  student stu=new student();
				  stu.setstuid(rs.getInt("stuid"));
				  stu.setstuname(rs.getString("stuname"));
				  stu.setdepartement(rs.getString("department"));
				  stu.setstupwd(rs.getInt("stupwd"));
				  stu.setmaxbook(rs.getInt("maxbook"));
				   list.add(stu);
			   }
			   request.setAttribute("list", list);
			   rs.close();
			   stmt.close();
			 	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
     request.getRequestDispatcher("adminafficheQuery.jsp").forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
