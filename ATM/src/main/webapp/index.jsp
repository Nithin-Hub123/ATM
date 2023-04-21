<%
if(session.getAttribute("name")== null) {

 response.sendRedirect("login.jsp");
 }
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style>
 .containers .row
 {
 	text-align: center; 					    
     font-weight: bold;
  }
</style>
<title>Insert title here</title>


<link href="css/index-styles.css" rel="stylesheet" />



<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





</head>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>">

<!-- Navigation bar-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" Style="padding-left:1px;"href="#page-top">Wellcome To ATM</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">				
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link" Style="padding-left:800px;height:3px;" href="logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><%=session.getAttribute("name") %></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container mt-4 bg-primary">
  <h1>User Details</h1>
  
  
 
  <form>
  <div>
  	<tbody>	
					  <%
             			String unamee = (String) request.getSession().getAttribute("name");
               		 // String balance =(String) request.getSession().getAttribute("balance");
						try
						{
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSL=false","root","admin@123");
						PreparedStatement pst = con.prepareStatement("select * from users where uname=?");
				    	pst.setString(1,unamee);
						//pst.setString(2,balance);
						ResultSet rs = pst.executeQuery();		
						while(rs.next())

						{
			   		 %>
					 <style>
  					  .balance-label
  					   {
 					    text-align: center; 					    
 					    font-weight: bold;
 					   }
					 </style>
					    <label class="balance-label"><h3>Account Number: ${rs.getString("account_number")}</h3></label>
                      <%  out.println(rs.getString("account_number")); %><br>
                        <label class="balance-label"><h3>Name: ${rs.getString("uname")}</h3></label>
                      <%  out.println(rs.getString("uname")); %><br>
                          <label class="balance-label"><h3>Mobile Number: ${rs.getString("umobile")}</h3></label>
                      <%  out.println(rs.getString("umobile")); %><br>
					 <label class="balance-label"><h3>Balance Ammount: ${rs.getString("balance")}</h3></label>		
					 <%  out.println(rs.getString("balance")); %><br>
                  	
				     <%
				   }
				
				int id = 0;
				if (rs.next())
				{
				    id = rs.getInt("id");
				}

				rs.close();
				pst.close();
				con.close();		
				
				}
				
				
				catch (Exception e)
	            {

		             e.printStackTrace();
		         }
				%>
			   </tbody>	
			   </div>
			   
			   
			   
			   
			   
			   </form>
			   </div>


	
	<!-- new section -->
	<!-- <section class="new-section  mb-0">-->
	
	
	  <div class="containers mt-4 bg-succes">
	  
	  
	   <div class="row">
                   
					<div class="col-sm-6">
						
						
                       
                       

						<!-- <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->						
					</div>
                </div>
	  
	  
	  
	  
	  </div>
	
	<!-- ----------------------------------------------Section for Deposit /withdrawal/passbook------------------ -->
	
	  <section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Services</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			</div>
	<!-- ---------------------------------------images card--------------------------------------> 	
		<div class="card-group">
			<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
			  <div class="card">			
    			  <div class="card-body">
    			  <a  style="width:100%;height:10%;text-align:center;position:relative;top:40%;" href="#deposit" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Deposit</span></a>
    			  </div> 
    			  	<img src="images/a.jpeg" class="card-img-top" alt="...">  
    			  <div class="card-body">
     			 <h5 style="width:100%;height:10%;text-align:center;position:relative;top:40%;" class="card-title">One Click Deposit</h5>     
    			</div>
    		 			
 			 </div>
 		  </div>
 		  
 		  
      <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  		 <div class="card">  		 
  		      <div class="card-body">
  		      <a  style="width:100%;height:10%;text-align:center;position:relative;top:40%;"href="#withdra" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>WithDrawal</span></a>
  		      </div> 
  		      <img src="images/b.jpeg" class="card-img-top" alt="...">  
  		     <div class="card-body">
            <h5 style="width:100%;height:10%;text-align:center;position:relative;top:40%;" class="card-title">One Click Withdrawal</h5>  
            </div>
  		           
     	 </div>
      </div>
  
      <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  		<div class="card">  		 
    		  <div class="card-body">
    		  <a  style="width:100%;height:10%;text-align:center;position:relative;top:40%;" href="#passbook" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Passbook</span></a>
    		  </div>
    		  <img src="images/c.jpeg" class="card-img-top" alt="...">  
    		  <div class="card-body">
     		 <h5 style="width:100%;height:10%;text-align:center;position:relative;top:40%;" class="card-title">One Click Mini Statement</h5>     
           </div>
    		 		   
       </div>
     </div>
</div>
</section>
<a href="#balance" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Balance</span></a>
	
	<!-- -----------------------------------------END-----Section for Deposit /withdrawal/passbook------------------ -->
	
	<!-- Edit Modal popup HTML------------deposit ammount ----------------------------1--------------------------------->
	<div id="deposit" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="post" action="deposit">
							
					<div class="modal-header">						
						<h4 class="modal-title">Deposit Ammount </h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>			
					                             
					<div class="form-group">
						<label>Enter Ammount</label>
						<input type="text" name="depositAmount" id="depositAmount" class="form-control" required="">
					</div>
					
				      <!-- 	<div class="modal-body">					
						<div class="form-group">
							<label>Accont_No</label>
							<input type="text" class="form-control" >
						</div>
						
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control">							
						</div>
							
											
					</div>-->
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	
	
	
	<!-- Edit Modal POPup HTML  ----------------Withdrwal Ammount------------------------2-------------------------------->
	
	
	<div id="withdra" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">	
			
				<form method="post" action="updatebalance">
					<div class="modal-header">						
						<h4 class="modal-title">withdrawal amount </h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<!--<div class="form-group">
							<label>Accont_No</label>
							<input type="text" class="form-control" >
						</div>
						
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control" >
							
						</div>-->
						<div class="form-group">
							<label>Enter The Ammount</label>
							<input type="text" name="Amount" id="Amount" class="form-control" required="">
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Submit">
					</div>	
			  </form>					
		   </div>
		 </div>
       </div>
					
					
	<!-- Edit Modal HTML ----------------------------- Balance_Ammount ----------------3--------------------------------- -->
	<div id="balance" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Balance Amount </h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					
					
					<div>
					<tbody>	
					  <%
             			 String uname = (String) request.getSession().getAttribute("name");
               		 // String balance =(String) request.getSession().getAttribute("balance");
						try
						{
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSL=false","root","admin@123");
						PreparedStatement pst = con.prepareStatement("select balance from users where uname=?");
				    	pst.setString(1,uname);
						//pst.setString(2,balance);
						ResultSet rs = pst.executeQuery();		
						while(rs.next())

						{
			   		 %>
					 <style>
  					  .balance-label
  					   {
 					    text-align: center; 					    
 					    font-weight: bold;
 					   }
					 </style>
					 <label class="balance-label">Current Balance: ${rs.getString("balance")}</label>
					
					 <%  out.println(rs.getString("balance")); %>

				     <%
				   }
				
				int id = 0;
				if (rs.next())
				{
				    id = rs.getInt("id");
				}

				rs.close();
				pst.close();
				con.close();		
				
				}
				
				
				catch (Exception e)
	            {

		             e.printStackTrace();
		         }
				%>
			   </tbody>	
			   </div>	
			   	<div class="modal-footer">
				  <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
				</div>		
		  </form>
		 </div>
		
					<!-- <div class="modal-body">					
						 <div class="form-group">
							<label>Balance Amount</label>
							<input type="text" name="balance" id="balance" class="form-control" required="">
						</div>
											
					</div>-->
				
					</div>
	   </div>
	  
	  
	  
	  <!-- passbook popup modal------------------------------------3----------------------- -->
					
					
	<div id="passbook" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">	
			
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">PassBook </h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					
					
					<div>
					<tbody>	
					  <%
					  
             			// String uname = (String) request.getSession().getAttribute("name");
               		 // String balance =(String) request.getSession().getAttribute("balance");
						try
						{
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSL=false","root","admin@123");
						PreparedStatement pst = con.prepareStatement("select * from users where uname=?");
				    	pst.setString(1,uname);
						//pst.setString(2,balance);
						ResultSet rs = pst.executeQuery();		
						while(rs.next())

						{
			   		 %>
					 <style>
  					  .balance-label
  					   {
 					    text-align: center; 					    
 					    font-weight: bold;
 					   }
					 </style>
					    <label class="balance-label">Account Number: ${rs.getString("account_number")}</label>
                      <%  out.println(rs.getString("account_number")); %><br>
                        <label class="balance-label">Name: ${rs.getString("uname")}</label>
                      <%  out.println(rs.getString("uname")); %><br>
                          <label class="balance-label">Mobile Number: ${rs.getString("umobile")}</label>
                      <%  out.println(rs.getString("umobile")); %><br>
					 <label class="balance-label"> Balance Ammount: ${rs.getString("balance")}</label>		
					 <%  out.println(rs.getString("balance")); %><br>
                  	
				     <%
				   }
				
				int id = 0;
				if (rs.next())
				{
				    id = rs.getInt("id");
				}

				rs.close();
				pst.close();
				con.close();		
				
				}
				
				
				catch (Exception e)
	            {

		             e.printStackTrace();
		         }
				%>
			   </tbody>	
			   </div>
			   <div><!-- ----------------------------------passbook credit and debit  -->
			  
			      <table class="table table-striped table-hover">
                <thead>
                    <tr align="center">
						<!--<th>
							 <span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>-->
						<!-- <th align="center" scop="col">Account-Number</th>-->
                        <th scop="col">CRIDIT</th>
                        <th scop="col">DEBIT</th>
                         <th scop="col">END BALANCE</th>		
                         
                         				
                       <!--  <th scop="col">Phone</th>-->
                        <!-- <th scop="col">Balance</th>-->
                         <!-- <th scop="col">Actions</th>-->
                    </tr>
                </thead>
                <tbody>
                
                
                <%
               
               // String uname1 = (String) request.getSession().getAttribute("name");
				 //String uname = (String) session.getAttribute("name");
                //Connection connection =null;
				//Statement statement =null;
				//ResultSet resultSet =null;
				//PreparedStatement Statementt = null;
				
				
				
				try
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSL=false","root","admin@123");
					PreparedStatement pst = con.prepareStatement("select credit,debit,end_balance from test where account_No=(select account_number from users where uname=?)");
			    	pst.setString(1,uname);
					//pst.setString(2,balance);
					ResultSet resultSet = pst.executeQuery();	
					
					//Class.forName("com.mysql.cj.jdbc.Driver");
					//connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSl=false","root","admin@123");
					//statement=connection.createStatement();			
					//resultSet=statement.executeQuery("select credit,debit from test");  
					
					//resultSet=statement.executeQuery("select credit,debit from test where account_No=(select account_number from users where uname='Nithin'");
				
					//pst.setString(2,uname1);
					 while(resultSet.next())

		              {
						 %>
						 <tr align="center">
						 <th scope="row">  <% out.println(resultSet.getString("credit")); %></th>
				     	  <td><b> <% out.println(resultSet.getString("debit")); %></b></td>
		            	  <td><b> <% out.println(resultSet.getString("end_balance")); %></b></td>
		            	 
		            	     
		            	   
		            	       
		            	</tr>
		            	<%
		              }
				} 
				catch (Exception e)
	            {

		             e.printStackTrace();
		         }
				%>			
										
                    </tbody>
                    
                    
                    
                    
                    
            </table>
			  
			  
			  
			   </div>	<!-- -----------------------End of credit and debit -->
			   
			   	<div class="modal-footer">
				  <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
				</div>		
		  </form>		
		   </div>
		 </div>
       </div>
       
     
						
	
 <!-- sweetalert---------------Alert Message--------------------------------4---------------------- -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 	
   <script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("congrats","Ammount As been Debited Successfully","success")
	}
	</script>
	
	
	  <script type="text/javascript">
	var status1 = document.getElementById("status1").value;
	if(status1 == "success"){
		swal("congrats","Ammount As been Credited Successfully","success")
	}
	</script>
</body>
</html>              
	
