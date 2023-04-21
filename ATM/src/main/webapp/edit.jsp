<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edit</title>
<style type="text/css">body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {        
		padding-bottom: 15px;
		background: #435d7d;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
.containers {
  max-width: 95%;
  margin: auto;
  padding: 5px;
  background-color: #ced4da;
  border: 1px solid #ccc;
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
.card-registration .card-body
{
text-align: center;

}
.card-registration .btn-close
{
	position:absolute;
	right:50px;
	 top:70px;
}
.card-registration .text-right
{
	position:absolute;
    bottom:50px;
	right:100px;
}
</style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
 <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>EDIT USERS DETAILS</h2>
					</div>
					
                </div>
            </div>
            
<div class="containers">
 <section class="vh-90 gradient-custom">
  <div class="container py-5 h-90">
    <div class="row justify-content-center align-items-center h-90">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <!-- <h2 class="mb-4 mr-10 pb-2 pb-md-0 mb-md-5">Registration Form</h2>-->
            <!-- <button type="button" class="btn-close"><a href="home.jsp">&times</a></button>-->
   
   				<tbody>         
          
<%
int id = Integer.parseInt(request.getParameter("id"));
  // Connect to database
  String url = "jdbc:mysql://localhost:3306/atm?useSSl=false";
  String username = "root";
  String password = "admin@123";
  Connection conn = DriverManager.getConnection(url, username, password);
  
  // Retrieve data for selected row
  PreparedStatement stmt = conn.prepareStatement("select account_number,uname,uemail,umobile,gender,address from users WHERE id = ?");
  stmt.setInt(1, id);
  ResultSet rs = stmt.executeQuery();
  
  // Get data from result set
  if (rs.next()) {
	//int account_No = rs.getInt("account_number"); 
    String name = rs.getString("uname");
    String email = rs.getString("uemail");    
    String mobile_no =rs.getString("umobile"); 
    String Gender =rs.getString("gender");
    String Address =rs.getString("address");
  %>
   
   
            <form method="post" action="updateuser">
			<input type="hidden" name="id" value="<%= id %>">
              <div class="row">
                <div class="col-md-6 mb-4">  
                 <div class="form-outline">
                   <input type="text" name="Name"  class="form-control form-control-lg" value="<%= name%>">                
                   <label class="form-label" >NAME</label>
                  </div>
                </div>             
                            
                <div class="col-md-6 mb-4">
                   <div class="form-outline">
                 <!--  <input type="text" name="Account-no" class="form-control form-control-lg"">                   
                     <label class="form-label" >Account Number</label>-->
                     
                      <input type="text" name="Mobileno" class="form-control form-control-lg" value="<%= mobile_no%>">                   
                    <label class="form-label">Phone Number</label>
                  </div>              
                </div>
              </div>
              

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center"> 
                   <div class="form-outline">
                   
                    <input type="text" name="Email" class="form-control form-control-lg" value="<%= email%>">
                    <label class="form-label" >Email</label>
                   
                   
                   
                     
                  </div>
                 </div>
                  <div class="col-md-6 mb-4">
                   <div class="form-outline">
                     <input type="text" name="Gender" class="form-control form-control-lg" value="<%= Gender%>">                    
                    <label class="form-label" >Gender</label>
                  </div>              
                </div>                
              </div>

            <!--   <div class="row">
                <div class="col-md-6 mb-4 pb-2">  
                    <div class="form-outline datepicker w-100">
                     
                   
                  </div>
                   </div>
                   

              </div>-->
              
              <!-- --new -->
               <div class="row">
               
                <div class="mb-4"><!-- col-md-6 mb-4 pb-2">-->

                  <div class="form-outline">
                    <input type="text" name="Addres" class="form-control form-control-lg" value="<%= Address%>">
                    <label class="form-label">Address</label>
                  </div>

                </div>
              </div>

           

              <div class="mt-4 pt-2">
                <input   class="btn btn-primary btn-lg"  type="submit" value="Save"></input> 
                           
              </div>  
                
             </form>
            
              <%
  }
  
  
  // Close database connection
  rs.close();
  stmt.close();
  conn.close();
%>


					
					
	</tbody>	
             
          </div>
        </div>
      </div>
    </div>
  </div>
</section>  
  				
  				
  				                         

  
 
   				
  	  		</div>
       
  
            
       </div>
  </div>



					
					

</body>
</html>