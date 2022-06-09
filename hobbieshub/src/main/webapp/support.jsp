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

          <!-- ***** -->

          <div id="suform">
            <form action="" style="border:1px solid #756c6c">
              <div class="suformcontainer">
                <h1>Contact Us</h1>
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
                <label>Enter your Message</label><br>
                <textarea name="comment" placeholder="Write your reviews..." style="height:200px" required></textarea><br>
                <br>

              
                  <button type="button" class="cancelbtn">Cancel</button>
                  <button type="submit" class="signupbtn">Send</button>
                <br>
                
              </div>
            </form>
          </div>

          <!-- ***** -->
          
          
      </div>
    </div>
			
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	
</html>