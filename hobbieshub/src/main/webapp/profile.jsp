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
			          <% session.getAttribute("userName");%>
			  
   			</div>
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	
</html>