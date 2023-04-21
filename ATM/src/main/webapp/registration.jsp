<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/registration.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
  
<body> 
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">


 <section class="vh-90 gradient-custom">
  <div class="container py-5 h-90">
    <div class="row justify-content-center align-items-center h-90">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h2 class="mb-4 mr-10 pb-2 pb-md-0 mb-md-5">Registration Form</h2>
            <button type="button" class="btn-close"><a href="home.jsp">&times</a></button>
   
            <form method="post" action="registor" >

              <div class="row">
                <div class="col-md-6 mb-4">  
                 <div class="form-outline">
                    <input type="text" name="name" id="name"  class="form-control form-control-lg" required=""/>
                    <label class="form-label" for="name">NAME</label>
                  </div>
                </div>             
                            
                <div class="col-md-6 mb-4">
                   <div class="form-outline">
                    <input type="email"  name="email" id="email" class="form-control form-control-lg"  required=""/>
                    <label class="form-label" for="email">Email</label>
                  </div>              
                </div>
              </div>
              

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">                  
                       
                   <div class="form-outline">
                    <input type="text" name="account_number" id="account_number" class="form-control form-control-lg" required=""/>
                    <label class="form-label" for="account_number">Account Number</label>
                  </div>
                  

                </div>
                <div class="col-md-6 mb-4">

                  <h6 class="mb-2 pb-1">Gender: </h6>

                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="subjects" value="Female" />
                    <label class="form-check-label">Female</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="subjects" value="Male" />
                    <label class="form-check-label" >Male</label>
                  </div>

                  <div class="form-check form-check-inline">
                       <input class="form-check-input" type="radio" name="subjects" value="Other" />
                    <label class="form-check-label" >Other</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">          
             
                  
                    <div class="form-outline datepicker w-100">
                    <input type="text" class="form-control form-control-lg"  name="pass" id="pass" required=""/>
                    <label for="pass" class="form-label">PIN</label>
                  </div>
                   </div>
                   
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="text" id="contact" name="contact" class="form-control form-control-lg" required="" />
                    <label class="form-label" for="contact">Phone Number</label>
                  </div>

                </div>
              </div>
              <!-- --new -->
               <div class="row">
               
                <div class="mb-4"><!-- col-md-6 mb-4 pb-2">-->

                  <div class="form-outline">
                    <input type="text" id="Address" name="Address" class="form-control form-control-lg" required=""/>
                    <label class="form-label" for="Address">Address</label>
                  </div>

                </div>
              </div>

           

              <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Submit" ></input>               
              </div>  
                <div class="text-right">
                      Do you have an account? <a href="login.jsp">Login</a>
                </div>  
             </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>     


	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
	
		
		
   <script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("congrats","Account created Successfully","success")
	}
	</script>
	
	

 
</body>
</html>