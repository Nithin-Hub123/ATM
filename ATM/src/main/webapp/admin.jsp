<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/admin.css">
<style>

</style>
<!-- =============================body============= -->


<body>



<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-secondary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
    <h3 class="form-title">  ATM MANAGEMENT SYSTEM</h3>
    </div>
    <!-- Copyright -->

    <button type="button" class="btn-close btn-close-white"  style="padding-left: 1.5rem; padding-right: 1.5rem;"><a aria-label="Close" href="home.jsp">X</a></button>
  </div>
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid"
          alt="Sample image">
      </div>
      
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
      
        <form  method="post" action="adimin-login">
        <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3"><h2>ADMIN LOGIN</h2></p>
           
          </div>
        
    	
        
        
        
      <div class="form-outline mb-4">
            <input type="email" name="username" id="username" class="form-control form-control-lg"
              placeholder="Enter a valid email" />
            <label class="form-label">User Email</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" name="password" id="password" class="form-control form-control-lg"
              placeholder="Enter password" required=""/>
            <label class="form-label">Password</label>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
           <!--  <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>-->
           <!--  <a href="#!" class="text-body">Forgot password?</a>-->
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg" 
              style="padding-left: 1.5rem; padding-right: 1.5rem;" >Login</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
           <!--  <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="#!"
                class="link-danger">Register</a></p>-->               
               <!--  <button type="button" class="btn btn-outline-danger btn-lg"  style="padding-left: 1.5rem; padding-right: 1.5rem;">Cancel</button>-->
          </div>
       
          

        </form>
      </div>
    </div>
  </div>

</section>



                <!-- ==== Modal popup starts==== --->


 
</body>
</html>