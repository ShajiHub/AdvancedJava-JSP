<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Hobbies Hub - Hobbies</title>
		<jsp:include page="links.html"></jsp:include>
	</head>

	<body>
		<jsp:include page="header.html"></jsp:include>
		
			<main>
			
			
			<div class="cartContainer">
        	<img class="banner" style="opacity:0.2;" src="assets\hobbycollage.png" >
            
       
		      <div class="intro">
		          <div class="introLeft">
		          <p>Hobbies Hub</p>
		          <h1>Shopping Cart</h1>
		          </div>
		          <!-- content starts -->
		          
		
					<div class="shopping-cart">
					
					  <div class="column-labels">
					    <label class="product-image">Image</label>
					    <label class="product-details">Product</label>
					    <label class="product-price">Price</label>
					    <label class="product-quantity">Quantity</label>
					    <label class="product-removal">Remove</label>
					    <label class="product-line-price">Total</label>
					  </div>
					
					  <div class="product">
					    <div class="product-image">
					      <img src="assets\cart\paint.jpg">
					    </div>
					    <div class="product-details">
					      <div class="product-title">Green Stuff World Chameleon Acrylic Paint Set 1 New</div>
					      <p class="product-description">Chameleon metal paints will create a colourshift visual effect depending on the viewing angle. Valid for brush and airbrush.
					        Best results will be obtained with Airbrush.</p>
					    </div>
					    <div class="product-price">40.00 </div>
					    <div class="product-quantity">
					      <input type="number" value="2" min="1">
					    </div>
					    <div class="product-removal">
					      <button class="remove-product">
					        Remove
					      </button>
					    </div>
					    <div class="product-line-price">25.98</div>
					  </div>
					
					  <div class="product">
					    <div class="product-image">
					      <img src="assets\cart\brush.png">
					    </div>
					    <div class="product-details">
					      <div class="product-title">Army Painter Most Wanted Brush Set New</div>
					      <p class="product-description">Made using Rotmarder sable, this extremely fine and pointed brush is perfect for painting ultra precise highlights, facial tattoos or just insane details. </p>
					    </div>
					    <div class="product-price">24.00</div>
					    <div class="product-quantity">
					      <input type="number" value="1" min="1">
					    </div>
					    <div class="product-removal">
					      <button class="remove-product">
					        Remove
					      </button>
					    </div>
					    <div class="product-line-price">45.99</div>
					  </div>
					
					  <div class="totals">
					    <div class="totals-item">
					      <label>Subtotal</label>
					      <div class="totals-value" id="cart-subtotal">120.45</div>
					    </div>
					    <div class="totals-item">
					      <label>Tax (13%)</label>
					      <div class="totals-value" id="cart-tax">15.60</div>
					    </div>
					    <div class="totals-item">
					      <label>Shipping</label>
					      <div class="totals-value" id="cart-shipping">8.00</div>
					    </div>
					    <div class="totals-item totals-item-total">
					      <label>Grand Total</label>
					      <div class="totals-value" id="cart-total">144.05</div>
					    </div>
					  </div>
					      
					      <button class="checkout">Checkout</button>
					
					</div>
					          <!-- content ends -->
					          
		      </div>
    </div>
			
			
			</main>
			
	<jsp:include page="footer.html"></jsp:include>	
	</body>
	<jsp:include page="scriptcart.html"></jsp:include>	
</html>