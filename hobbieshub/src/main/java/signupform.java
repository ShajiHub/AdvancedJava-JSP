
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

/**
 * Servlet implementation class signupform
 */
@WebServlet("/signupform")
public class signupform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signupform() {
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
		String userName = request.getParameter("name");
		
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("pwd");
		String userArtist = request.getParameter("create");
		String userPic = request.getParameter("image");
		
		PrintWriter disp = response.getWriter();
		
		
		//connect to DataBase and insert the message
				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbieshubproject","root","");
				Statement insert = con.createStatement();
				insert.executeUpdate("INSERT INTO peoples(pid, name, email, password, creator, pic) VALUES (null, '"+userName+"', '"+userEmail+"', '"+userPassword+"', '"+userArtist+"', '"+userPic+"')");
//					INSERT INTO `peoples` (`pid`, `name`, `email`, `password`, `creator`, `pic`) VALUES (NULL, 'Shaji', 'sample@gmail.com', 'sample123', 'yes', '20180319_090639.jpg');	
				}
				catch(Exception e) {
					//Print error message
					disp.print(e);
				}
				
				response.sendRedirect("login.jsp");
				
		
		
		
		
	}

}
