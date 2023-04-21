package uniquedeveloper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/deleteuser")
public class Deleteusers extends HttpServlet 
{
	private static final long serialVersionUID = 1L;    
    
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			
			int itemId = Integer.parseInt(request.getParameter("itemId"));
			Connection conn = null;
			  try
	          {                   
				
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSl=false","root","admin@123");
	            PreparedStatement pst = conn.prepareStatement("DELETE FROM users WHERE id = ?");             
	            pst.setInt(1, itemId);
	    		int rowCount = pst.executeUpdate();
				RequestDispatcher dispatcher = request.getRequestDispatcher("admin-dashboard.jsp");
				
				if (rowCount > 0) 
				{
				   request.setAttribute("status2", "success"); 			  			
				}
				else
				{
					//request.setAttribute("status", "failed");
				}
				
				dispatcher.forward(request,response);
	          
	          }
			  catch(Exception e)
	  		  {
	  			e.printStackTrace();
	  		
	  		  }  
		 }
	}