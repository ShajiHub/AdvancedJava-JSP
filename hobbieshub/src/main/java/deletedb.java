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
 * Servlet implementation class deletedb
 */
@WebServlet("/deletedb")
public class deletedb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletedb() {
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
				String artistName = request.getParameter("ar_name");
				String artCategory = request.getParameter("ar_category");
				String artTitle = request.getParameter("ar_title");
				String artDescription = request.getParameter("ar_desc");
				String artVideo = request.getParameter("ar_video");
				String artImage = request.getParameter("ar_image");
				PreparedStatement ps = null;
				if(artistName != null && artistName != ""){
				//connect to database
				//insert user feedback to feedback table
				PrintWriter disp = response.getWriter();
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbieshubproject","root","");
				
					
				
					String sql="DELETE FROM artist_db WHERE title='"+artTitle+"' ";
					ps = con.prepareStatement(sql);
					int i = ps.executeUpdate();
					
					if(i > 0)
					{
					
					response.setContentType("text/html");  
					disp.println("<script type=\"text/javascript\">");  
					disp.println("alert('record in database is deleted');");  
					disp.println("</script>");
					}
					else
					{
					
					response.setContentType("text/html");  
					disp.println("<script type=\"text/javascript\">");  
					disp.println("alert('record in database is not deleted');");  
					disp.println("</script>");
					} 
					
				
					
					
					}
					catch(Exception e) {
						//Print error message
						disp.print(e);
					}
				}
			}

		}
