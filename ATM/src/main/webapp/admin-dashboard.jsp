<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Bootstrap CSS End -->
    <!-- Main CSS -->
    <link rel="stylesheet" href="/css/style.css">
    <!-- Main CSS End -->
    <!-- Bootstrap Icons Start -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <!-- Bootstrap Icons End -->
    <link rel="stylesheet" href="/css/dark-mode.css">
 <link rel="stylesheet" href="css/admin.css">
 
 
 

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


 
</head>


<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>">
<input type="hidden" id="status2" value="<%= request.getAttribute("status2")%>">

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <!-- Sidebar Trigger Start -->
    <button class="navbar-toggler me-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvas" aria-controls="offcanvas"><span class="navbar-toggler-icon"></span></button>
    <!-- Sidebar Trigger End -->
    <a class="navbar-brand fw-bold me-auto" href="#">DASHBOARD</a>
   <!--  <a class="navbar-brand fw-bold pd-right" href="">ADMIN</a>-->
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <form class="d-flex ms-auto">
      <div class="input-group my-3 my-lg-0">
       
       
     
      </div>
          <!-- <div class="input-group my-3 my-lg-0">
              <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
              <button class="btn btn-primary" type="button" id="button-addon2"><i class="bi bi-search"></i></button>
            </div>-->
             
      </form>
      <ul class="navbar-nav mb-2 mb-lg-0">
          <li class="nav-item dropdown" Style="padding-left:1200px;">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <label>ADMIN</label>   <i class="bi bi-person-square"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
      
              <li><a class="dropdown-item" href="admin.jsp"><b>LOGOUT</b></a></li>
             
            </ul>
          </li>
        </ul>
    </div>
  </div>
</nav>             
<!-- Navbar End -->

<!-- Sidebar Start -->
<div class="offcanvas offcanvas-start bg-dark text-white side-bar" data-bs-scroll="true" tabindex="-1" id="offcanvas" aria-labelledby="offcanvas">
  <div class="offcanvas-body p-0">
    <nav class="navbar-dark">
      <ul class="navbar-nav">
        <li>
          <div class="text-muted small fw-bold text-uppercase px-3">Core</div>
        </li>
        <li>
          <a href="#" class="nav-link px-3 active">
            <span class="me-2">
              <i class="bi bi-wrench-adjustable-circle"></i>
            </span>
            <span class="fw-bold">Dashboard</span>
          </a>
        </li>
        <li class="my-4">
          <hr class="dropdown-divider">
        </li>
        <li>
          <div class="text-muted small fw-bold text-uppercase px-3">Interface</div>
        </li>
        <li>
          <a class="nav-link px-3 sidebar-link" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            <span class="me-2"><i class="bi bi-layout-text-window-reverse"></i></span>
            <span class="fw-bold">Layouts</span>
            <span class="right-icon ms-auto">
              <i class="bi bi-chevron-down"></i>
            </span>
          </a>
          <div class="collapse" id="collapseExample">
            <div>
              <ul class="navbar-nav ps-3">
                <li>
                  <a href="#" class="nav-link px-3">
                    <span class="me-2"><i class="bi bi-layout-text-window-reverse"></i></span>
            <span class="fw-bold">Nested Link</span>
                  </a>                  
                </li>
              </ul>
            </div>
          </div>
          
          <li>
          <a href="#" class="nav-link px-3">
            <span class="me-2">
              <i class="bi bi-archive"></i>
            </span>
            <span class="fw-bold">Archive</span>
          </a>
        </li>
        <li class="my-4">
          <hr class="dropdown-divider">
        </li>
        <li>
          <div class="text-muted small fw-bold text-uppercase px-3">Addons</div>
        </li>
        <li>
          <a href="#" class="nav-link px-3">
            <span class="me-2">
              <i class="bi bi-activity"></i>
            </span>
            <span class="fw-bold">Activity</span>
          </a>
        </li>
        <li>
          <a href="#" class="nav-link px-3">
            <span class="me-2">
              <i class="bi bi-clipboard2-data"></i>
            </span>
            <span class="fw-bold">Data</span>
          </a>
        </li>
        <li class="my-4">
          <hr class="dropdown-divider">
        </li>
        <div class="custom-control custom-switch px-3">
          <label class="custom-control-label" for="darkSwitch">
          <span class="fw-bold">
            <i class="bi bi-moon me-2"></i>
            Dark Mode</span>
          </label>
          <input type="checkbox" class="custom-control-input checkbox ms-auto" id="darkSwitch">
        </div>
        <li class="my-4">
          <hr class="dropdown-divider">
        </li>
        <li>
          <a href="#" class="nav-link px-3">
            <span class="me-2">
              <i class="bi bi-info-circle"></i>
            </span>
            Provided by 
            <span class="fw-bold">AppSeed</span>
          </a>
        </li>
      </li>
        </li>
      </ul>
    </nav>
  </div>
</div>
<!-- Sidebar End -->

<!-- Main Content Start -->
<main class="mt-5 pt-3">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12 fw-bold fs-3">Dashboard</div>
    </div>
    <div class="row mt-2">
      <div class="col-md-3 mb-3">
        <div class="card text-white bg-primary h-100">
          <div class="card-header fw-bold">Welcome to ATM MANAGEMENT SYSTEM</div>
          <div class="card-body">
            <h5 class="card-title">Dashboard</h5>
            <p class="card-text"></p>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="card text-white bg-success h-100">
          <div class="card-header fw-bold">1</div>
          <div class="card-body">
            <h5 class="card-title">Branches</h5>
            <p class="card-text"></p>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="card text-white bg-warning h-100">
          <div class="card-header fw-bold">1</div>
          <div class="card-body">
            <h5 class="card-title">ATM</h5>
            <p class="card-text"></p>
          </div>
        </div>
      </div>
     <div class="col-md-3 mb-3">
        <div class="card text-white bg-danger h-100">
          <div class="card-header fw-bold">Manager</div>       
             <div class="col-sm-6">
				<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New USERS</span></a>						
			</div>
        </div>
      </div>
    </div>
    
  
  <!-- edit modal -->
 <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>USERS<b>Accounts</b></h2>
					</div>
					
                </div>
            </div>
            <table class="table table-striped table-hover">
            <tbody>
            
            <%
  				// Connect to database
  					String url = "jdbc:mysql://localhost:3306/atm?useSSl=false";
 				    String username = "root";
  					String password = "admin@123";
  					Connection conn = DriverManager.getConnection(url, username, password);
  
 			  // Retrieve data from database
  				Statement stmt = conn.createStatement();
  				String sql = "select id,account_number,uname,uemail,address,umobile,gender from users";
  			    ResultSet rs = stmt.executeQuery(sql);
			%>
            
            </tbody>
                <thead>
                    <tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>Account-Number</th>
                        <th>Name</th>
                        <th>Email</th>
						<th>Address</th>
						<th>Mobile No</th>
                        <th>Gender</th>&nbsp;&nbsp;
                        
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>                
       			<% while (rs.next())
       				{ 
       				%>
  					<tr>
  					  <td><%= rs.getInt("id") %></td>
  					  <td><%= rs.getInt("account_number") %></td>
  					  <td><%= rs.getString("uname") %></td>
     				  <td><%= rs.getString("uemail") %></td>
   					  <td><%= rs.getString("address") %></td>
   					  <td><%= rs.getString("umobile") %></td>
   					  <td><%= rs.getString("gender") %></td> 
    				  <td><a href="edit.jsp?id=<%= rs.getInt("id") %>">Edit</a>&nbsp;&nbsp;    				  
    				  <td><button class="btn btn-danger btn-delete" data-item-id="<%= rs.getInt("id") %>" data-toggle="modal" data-target="#confirm-delete-modal">Delete</button></td>    				 
  					</tr>
 				    <%
 				    } 
 				 %>
 		     </tbody>
                  
            </table>
			<div class="clearfix">
                <!-- <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>-->
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
    
<!-- ADD NEW USER Modal popup HTML----------------- --------------------NEW USER ----------------------------0--------------------------------->    
    
    
    	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="post" action="AddNewuser">
				
					<div class="modal-header">						
						<h4 class="modal-title">Add NEW USER</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">	
					<div class="form-group">
							<label>Account Number</label>
							<input type="text" name="account_number" class="form-control" required>
						</div>	
						<div class="form-group">
							<label>Password</label>
							<input type="text" name="password" class="form-control" required>
						</div>			
						<div class="form-group">
							<label>Name</label>
							<input type="text" name="username" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Email</label>
							<input type="email" name="email"  class="form-control" required>
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea name="address"  class="form-control" required></textarea>
						</div>
						<div class="form-group">
							<label>Phone</label>
							<input type="text" name="phone"  class="form-control" required>
						</div>		
						<div class="form-group">
							<label>Gender</label>
							<input type="text" name="Gender" class="form-control" required>
						</div>				
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- Edit Modal popup HTML-----------------Action --------------------Edit Part ----------------------------1--------------------------------->
	
	<div id="Edituser" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="post" action="ActionEdit">
					
							
					<div class="modal-header">						
						<h4 class="modal-title">Edit Details </h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>			
					      
					    <div class="form-group">
						<label>Id</label>
						<input type="text" name="id" id="id" class="form-control">						
					</div>               
					<div class="form-group">
						<label>Name</label>
						<input type="text" id="name" name="firstName" id="firstName"  class="form-control" required="">						
					</div>
					<div class="form-group">
					   <label class="form-label" for="email">Email</label>
                       <input type="email" id="email" name="email" class="form-control"  required="">                 
                   </div>  
                  <div class="form-group">
						<label>Mobile</label>
						<input type="text" name="Mobileno" id="Mobileno" class="form-control">						
				  </div>
				  <div class="form-group">
						<label>Gender</label>
						<input type="text" name="Gender" id="Gender" class="form-control">						
				  </div>
                  
                  
				      <!-- 	<div class="modal-body">					
						<div class="form-group">
							<label>Accont_No</label>
							<input type="text" class="form-control">
						</div>
						
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control">							
						</div>
							
											
					</div>-->
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Submit">
					</div>
				</form>
				
			</div>
		</div>
	</div>
            
            
            
            

<!--  Modal popup HTML-----------------Action --------------------Delete Part  ----------------------------2--------------------------------->
   <!-- Delete Modal popup HTML -->
    
    
    <div class="modal fade" id="confirm-delete-modal" tabindex="-1" role="dialog" aria-labelledby="confirm-delete-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirm-delete-modal-title">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this item?
            </div>
            <div class="modal-footer">
                <form id="delete-form" method="post" action="deleteuser">
                    <input type="hidden" id="delete-item-id" name="itemId">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>
    
    
    <script>
    $(document).ready(function() {
        $('.btn-delete').click(function() {
            var itemId = $(this).data('item-id');
            $('#delete-item-id').val(itemId);
        });
    });   
    </script>
    
    <br>
    <div class="row mt-2">
      <div class="col-md-12">
        </div>
    </div>
    <br>
  </div>
</main>
<!-- Main Content End -->

<!-- Scripts Start -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.2/dist/chart.min.js"></script>
<script src="/js/script.js"></script>
<script src="/js/dark-mode-switch.min.js"></script>
<!-- Scripts End -->


	
 <!-- sweetalert---------------Alert Message----------------------------------------------------------------------------- -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 	
   <script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("congrats"," Data updated Successfully","success")
	}
	</script>
	
	 <!-- sweetalert------For---------ADD New User----------------------------------------------------------------------- -->
	

	
	  <script type="text/javascript">
	var status1 = document.getElementById("status1").value;
	if(status1 == "success"){
		swal("congrats","Account created Successfully","success")
	}
	</script>
	 <!-- sweetalert------For---------Delete User----------------------------------------------------------------------- -->
	

	
	  <script type="text/javascript">
	var status2 = document.getElementById("status2").value;
	if(status2 == "success"){
		swal("congrats"," your Account as been Deleted Successfully","success")
	}
	</script>
	
	
	

</body>
</html>
