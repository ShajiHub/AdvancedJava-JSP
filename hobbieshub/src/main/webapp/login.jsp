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
			          <div id="lform">
			            <form method="post" action="./loginform" style="border:1px solid #756c6c">
			              <div class="lformcontainer">
			                <h1>Login Form</h1>
			                <br>
			          
			                <hr>
			                <br>
			                
			                <label>Enter Your Email</label><br>
			                <input type="text" placeholder="Enter Email" name="uemail" required>
			                <br>
			                <label>Enter Your Password</label><br>
			                <input type="password" placeholder="Enter Password" name="pwd" required>
			                <br>  <br>
			                
			              
			                  <button type="button" class="cancelbtn">Cancel</button>
			                  <button type="submit" class="loginbtn">Login</button>
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