

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
</head>
<body>



<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

	<div class="main">
	

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
			
			<title><h1>ATM</h1><br> MANAGEMENT SYSTEM</title>
				<div class="signin-content">
				
					<div class="signin-image">
						<figure>
							<img src="images/atm1.jpg" alt="sing up image">
						</figure>
					<!-- <a href="registration.jsp" class="signup-image-link">Create an account</a>-->
					</div>

					<div class="signin-form"><br>
					<h2 class="form-title">ATM</h2>
					<h3 class="form-title">MANAGEMENT SYSTEM</h3><br><br><br>
					 
						<!-- <h3 class="form-title">Login</h3>-->
						<form method="post" action="login" class="register-form"
							id="login-form">
							
							<!-- <h1 > ENTER YOUR CARD NUMBER</h1>-->
							<div class="form-group">
							<lable style="width:100%;height:10%;text-align:center;padding-right: 5.5rem;">Account No:-</lable>
								<label for="account_no"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="account_no" id="account_no"
								required=""/>
										<!-- placeholder="ACCOUNT NUMBER" placeholder="ENTER YOUR PIN-NUMBER"-->
							</div>		
								<div class="form-group">
								<lable>Pin:-</lable>
								<label for="password"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="password" id="password"
									 required=""/>
							</div>				
						
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin" class="form-submit" value="LOGIN" />					
								<button type="button"  style="display: inline-block;background: #6dabe4;color: #fff;
  									border-bottom: none;width: auto;padding: 15px 39px;border-radius: 5px;
 									 margin-top: 25px;cursor: pointer;background: #4292dc;">
									<a aria-label="Close" href="home.jsp">Close</a>
								</button>
						  </div>
							<div>
							</div>
						</form>
					
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS java Script message  -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	
	
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
	
		
		
   <script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","error");
	}
	</script>
	
	

	



</body>
</html>