
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;



/**
 * Servlet implementation class loginform
 */
@WebServlet("/loginform")
public class loginform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String Email = request.getParameter("uemail");
		
	
		if(Email != null && Email != ""){
		//connect to database
		//insert user feedback to feedback table
		PrintWriter disp = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbieshubproject","root","");
		
			 Statement stmt = con.createStatement();
		
			String query="SELECT * FROM peoples WHERE email ='"+Email+"' ";
			ResultSet rs = stmt.executeQuery(query);
		    
			
			rs.next();
			String creator_db=rs.getString("creator");
			
			if(creator_db != null && creator_db.equals("no") ) {
				
				response.sendRedirect("profile.jsp");
				return;
			}else
			{
			response.sendRedirect("artistdata.jsp");
			}
			
			
			}
			catch(Exception e) {
				//Print error message
				disp.print(e);
			}
		}
	}

}
