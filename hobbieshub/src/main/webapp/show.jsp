
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
		<title>Hobbies Hub - Show</title>
		<jsp:include page="links.html"></jsp:include>
	</head>

	<body>
		<jsp:include page="showheader.html"></jsp:include>
		
			    
								
		
			<main>
			<div class="showContainer">
      		<img class="banner" style="opacity:0.2;" src="assets\hobbycollage.png" alt="hobbiesimage">
          
     
				      <div class="intro">
				         <div class="introLeft">
				         <p>Hobbies Hub</p>
				        </div>
				             <div class="hobbydisp">
				                <div id="artist">
				                  <p class="hobbyTitle">Self Intro</p>
				
				                  <p class="artistIntro">
				                  <span class='fas fa-pen blue-color'></span>&nbsp
				                  Hey! I'm <strong>Artist/Author/Creator</strong>. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare suspendisse sed nisi lacus sed viverra tellus in hac. Scelerisque in dictum non consectetur a erat nam at lectus. A erat nam at lectus. Facilisi cras fermentum odio eu feugiat pretium. Commodo ullamcorper a lacus vestibulum sed arcu. 
				                  </p>
				                  <p class="artistIntro"> Lacus laoreet non curabitur gravida arcu. Mollis aliquam ut porttitor leo a diam sollicitudin. Interdum posuere lorem ipsum dolor. Ut etiam sit amet nisl. Porttitor lacus luctus accumsan tortor posuere ac ut consequat.
				                  </p>
				
				                </div>
				            
									
									
				                      
				                <div class="artistPerfo">
				           
				                  <p class="hobbyTitle">Painting</p>
				                  <p class="artistIntro"> Lacus laoreet non curabitur gravida arcu. Mollis aliquam ut porttitor leo a diam sollicitudin. Interdum posuere lorem ipsum dolor. Ut etiam sit amet nisl. Porttitor lacus luctus accumsan tortor posuere ac ut consequat.
				                  </p>
					            <div class="artistVideo">
					             <%
										String categoryName = request.getParameter("ctname");
										PrintWriter disp = response.getWriter();
										if(categoryName != null && categoryName.equals("Painting") ) {
										try {
											Class.forName("com.mysql.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbieshubproject","root","");
											Statement stmt = con.createStatement();
											String query="SELECT * FROM artist_db WHERE category ='"+categoryName+"' ";
											
											ResultSet rs = stmt.executeQuery(query);
							    
											while(rs.next()){
												String artTitle = rs.getString("title");
												String artVideo = rs.getString("video");
												String artPicture = rs.getString("photo");
											
												%>
										
					            
					            <iframe width="560" height="315" src="https://www.youtube.com/embed/<%=artVideo%>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					             <%							}
										
									
									}
									catch(Exception e) {
										//Print error message
										disp.print(e);
									}
										}
			%>	
					           
				              <div class="buyCard">
				                <img src="assets\colors.jpg" alt="buy" >
				                <h1>Craft Name</h1>
				              <p class="price">$20.99</p>
				              <p>Some text about the Craft..</p>
				              <p><button>Add to Cart</button></p>
				              </div>
				              
				              <div class="buyCard">
				                <img src="assets\colors.jpg" alt="buy" >
				                <h1>Craft Name</h1>
				              <p class="price">$20.99</p>
				              <p>Some text about the Craft..</p>
				              <p><button>Add to Cart</button></p>
				              </div>
				              
				              <div class="buyCard">
				                <img src="assets\colors.jpg" alt="buy" >
				                <h1>Craft Name</h1>
				              <p class="price">$20.99</p>
				              <p>Some text about the Craft..</p>
				              <p><button>Add to Cart</button></p>
				              </div>
				
				          <form id="compform" action="action_page.php" style="border:1px solid #756c6c">
				                  <div class="compformContainer">
				                  <hr>
				                  <br>
				                                       
				                    <input type="text" placeholder="type your compliments/message to artist..." name="comment" required>
				                    <button class="compbutton" type="submit" >Comment</button>
				                    <br>
				                    
				                  </div>
				                </form>
				        </div>      
				
				
				            </div>    
				
				           
				           
				            
				
				            
				            
				              
				            </div>
				        
				    </div>
  			</div>
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	
</html>