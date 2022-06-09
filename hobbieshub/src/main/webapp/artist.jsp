
<%@ page import="java.io.PrintWriter"
	      import="java.sql.Connection" 
	      import="java.sql.DriverManager"
          import="java.sql.Statement" 
          import="java.sql.*"

          language="java" contentType="text/html; charset=ISO-8859-1"
          pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Hobbies Hub</title>
		<jsp:include page="links.html"></jsp:include>
	</head>

	<body>
		<jsp:include page="artistheader.html"></jsp:include>
		
			
		
		
		
			<main>
			<div class="artistContainer">
			        <img class="banner" style="opacity:0.2;" src="assets\hobbycollage.png" >
			            
			       
			      <div class="intro">
			      
			          <div class="introLeft">
			          <p>Hobbies Hub</p>
			  
			          </div>
			          
				          <div id="artistimage">
				            <%
	
								PrintWriter disp = response.getWriter();
								try {
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbieshubproject","root","");
									Statement stmt = con.createStatement();
									
									String query="SELECT * FROM peoples WHERE creator ='yes' ";
									ResultSet rs = stmt.executeQuery(query);
								    
									
									while(rs.next()){
									String artistName = rs.getString("name");
									String artistImg = rs.getString("pic");%>
									
										<div class="artistimg"><a href="artistshow.jsp"><img   src="assets\artist\<%=artistImg%>"></a>
											
											<form action="" method="post">
    											<input type="hidden" name="aname" value="<%=artistName %>"/>
    											<div >
    											<button  class="artistinfo" type="submit" formaction="show.jsp" value="Submit"><p><%=artistName %></p></button>
    											</div>
  											</form>
											
									    </div>
									    
										
								<%	}
									
									}
									catch(Exception e) {
										//Print error message
										disp.print(e);
									}
							
								    
								%>
				            </div>
				             
				            
				                        
				          </div>
			          
			      </div>
            </div>
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	
</html>