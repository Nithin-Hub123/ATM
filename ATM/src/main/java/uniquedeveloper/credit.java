package uniquedeveloper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet("/updateuser")
public class credit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//HttpSession session = request.getSession();
		//String userId = (String) session.getAttribute("userId");
	
		  int id = Integer.parseInt(request.getParameter("id"));

    	String uname = request.getParameter("Name"); 
    	String uemail = request.getParameter("Email");//account_number 
    	String umobile = request.getParameter("Mobileno");
    	String gender = request.getParameter("Gender");
		//String upwd = request.getParameter("pass");
	
		//String gender = request.getParameter("subjects");
		String addres = request.getParameter("Addres");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		

	        	try 
	    		{
	        		
	    			Class.forName("com.mysql.cj.jdbc.Driver");
	    		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSl=false","root","admin@123");
	    			PreparedStatement pst = con.prepareStatement("UPDATE users SET uname = ?,uemail = ?,umobile = ?,gender = ?,address = ? where id = ? ");
	    			//pst.setString(1,account_number);
	    			pst.setString(1,uname);
	    			pst.setString(2,uemail);
	    			pst.setString(3,umobile);
	    			pst.setString(4,gender);
	    			pst.setString(5,addres);
	    			//pst.setInt(2, Integer.parseInt(id));
	    			//pst.setInt(5,userId);
	    			pst.setInt(6,id);
	    			
	    			int rowCount = pst.executeUpdate();
	    			dispatcher = request.getRequestDispatcher("admin-dashboard.jsp");
	    			
	    			if (rowCount > 0) 
	    			{
	    			   request.setAttribute("status", "success"); 			  			
	    			}
	    			else
	    			{
	    				request.setAttribute("status", "failed");
	    			}
	    			
	    			dispatcher.forward(request,response);
	    		 }
	    		catch(Exception e)
	    		{
	    			e.printStackTrace();
	    		
	    		}
	    		finally
	    		{
	    			try
	    			{
	    			   con.close();
	    			}
	    			catch (SQLException e)
	    			{
	    				
	    				e.printStackTrace();
	    			}
	    		


	    	}
	    		
	    	}

	    	}
