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
		<jsp:include page="header.html"></jsp:include>
		
		<%
	
	String artistName = request.getParameter("ar_name");
	String artCategory = request.getParameter("ar_category");
	String artTitle = request.getParameter("ar_title");
	String artDescription = request.getParameter("ar_desc");
	String artVideo = request.getParameter("ar_video");
	String artImage = request.getParameter("ar_image");
	if(artistName != null && artistName != ""){
	//connect to database
	//insert user feedback to feedback table
	PrintWriter disp = response.getWriter();
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbieshubproject","root","");
		Statement insert = con.createStatement();
		insert.executeUpdate("INSERT INTO artist_db(name, category, title, details, video, photo) VALUES ('"+artistName+"', '"+artCategory+"', '"+artTitle+"', '"+artDescription+"', '"+artVideo+"', '"+artImage+"')");
		
		}
		catch(Exception e) {
			//Print error message
			disp.print(e);
		}
	}
	    
	%>
	
		
			<main>
					
			<div class="amainContainer">
        	<img class="banner" style="opacity:0.2;" src="assets\hobbycollage.png" >
            
       
			      <div class="intro">
			          <div class="introLeft">
			          <p>Hobbies Hub</p>
			  
			          </div>
			          <div id="aform">
			            <form method="post" action="" style="border:1px solid #756c6c">
			              <div class="aformcontainer">
			                <h1>Artist Data</h1>
			                <br>
			               
			                <hr>
			              <br>
				                <label>Enter your Name</label><br>
				                <input type="text" placeholder="Enter name..." name="ar_name" required>
				                <br>
			                <label>Enter Category</label><br>
			                
			                <div class="categoriesMenu">
	                           
		                      <select placeholder="Choose subject..." name="ar_category" id="aCategory" required>
		                        <option id="choose" disabled hidden selected>Choose from option...</option>
		                        <option>Painting</option>
		                        <option>Crafts </option>
		                        <option>Other</option>
		                      </select>
                  			</div>
			                <br>
			                <label>Enter Title</label><br>
			                <input type="text" placeholder="Enter title..." name="ar_title" required>
			                <br>
			                
			                <label>Enter Description</label><br>
			                <input type="text" placeholder="Enter details..." name="ar_desc" required>
			                <br>
			            
			                <label>Upload Video</label>&nbsp
			                <input style="font-size: 25px;" type="file" placeholder="Upload video..." name="ar_video" >
			                <br><br>
			                <label>Upload Photo</label>&nbsp
			                <input style="font-size: 25px;" type="file" placeholder="Upload image..." name="ar_image" >
			                <br><br>
			                <hr>
			                
			
						
			              
			              
			                  <button type="submit" formaction="./updatedb" class="updatebtn">Update Data</button>
			                  <button type="submit" class="addbtn">Add Data</button>
			                  <button type="submit" formaction="./deletedb" class="deletebtn">Delete Data</button>
			                <br>
			                
			              </div>
			            </form>
			          </div>
			          
			      </div>
   			</div>
   			
   			
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	
</html>