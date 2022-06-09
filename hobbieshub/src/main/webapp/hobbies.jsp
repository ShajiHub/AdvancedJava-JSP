
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
		<title>Hobbies Hub - Hobbies</title>
		<jsp:include page="links.html"></jsp:include>
	</head>

	<body>
		<jsp:include page="hobbiesheader.html"></jsp:include>
		
			<main>
			<div class="hobbiesContainer">
      		<img class="banner" style="opacity:0.2;" src="assets\hobbycollage.png" >
          
     			    <div class="intro">
			        <div class="introLeft">
			        <p>Hobbies Hub</p>
			
			        </div>
			        
			        
			         <div id="hobbiesCategory">
			         			         
								         <form action="" method="post">
								         <a href="show.jsp"><img src="assets\paint.png"></a>	
								         <div class="cHead" style="position: absolute; left: 20px; top: 300px; color:white;"> 
					    				 <input type="hidden" name="ctname" value="Painting"/>
    						
				    						<button  type="submit" formaction="show.jsp" value="Submit"><p>Painting</p><span>click here</span></button>
				    							
						    			 </div>		
						  				 </form>	
  												
					</div>
											
					
			       
			       
			       			       
			        <div id="hobbiesCategory">
			         			         
								         <form action="" method="post">
								         <a href="show.jsp"><img src="assets\button.jpg"></a>	
								         <div class="cHead" style="position: absolute; left: 20px; top: 560px; color:white;"> 
					    				 <input type="hidden" name="cname" value="Crafts"/>
    						
				    						<button  type="submit" formaction="show.jsp" value="Submit"><p>Crafts</p><span>click here</span></button>
				    							
						    			 </div>		
						  				 </form>	
  												
					</div>
			        
			        <div id="hobbiesCategory">
			          <a href="show.jsp">
			          <img src="assets\traditional.jpg">
			        </a>
			        </div>
			        
			        <div id="hobbiesCategory">
			          <a href="show.jsp">
			          <img src="assets\books.jpg">
			          </a>
			        </div>
			        
			        <div id="hobbiesCategory">
			          <a href="show.jsp">
			          <img src="assets\traditional.jpg">
			        </a>
			        </div>
			        
			   	 </div>
  			</div>
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	
</html>