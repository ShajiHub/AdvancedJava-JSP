<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
		
			<main>
					
			<div class="mainContainer">
        	<img class="banner" style="opacity:0.2;" src="assets\hobbycollage.png" >
            
       
			      <div class="intro">
			          <div class="introLeft">
			          <p>Hobbies Hub</p>
			  
			          </div>
			          <div id="sform">
			            <form method="post" action="./signupform" style="border:1px solid #756c6c">
			              <div class="sformcontainer">
			                <h1>Sign Up Form</h1>
			                <br>
			                <h2>Create your account</h2>
			                <hr>
			                <br>
			                <label>Enter Your Name</label><br>
			                <input type="text" placeholder="Enter your name..." name="name" required>
			                <br>
			                <label>Enter Your Email</label><br>
			                <input type="text" placeholder="Enter Email" name="email" required>
			                <br>
			                <label>Enter Your Password</label><br>
			                <input type="password" placeholder="Enter Password" name="pwd" required>
			                <br>  <br>
			                <label>Are you a Creator(choose if you like to signup as artist and upload files)? </label> 
			                  <input type="radio"  name="create" style="margin-bottom:15px" value="yes"> Yes 
			                  <input type="radio"  name="create" style="margin-bottom:15px" value="no"> No
			                  <br>       
			                  <br>
			            
			                <label>Upload Your Photo(If you chose artist)</label><br><br>
			                <input style="font-size: 25px;" type="file" placeholder="Upload image..." name="image" >
			                <br><br>
			                <hr>
			                <p>By creating an account you agree to our <a href="#" style="color:rgb(16, 123, 62)">Terms & Privacy</a>.</p>
			                <br>
			
			              
			                  <button type="button" class="cancelbtn">Cancel</button>
			                  <button type="submit" class="signupbtn">Sign Up</button>
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