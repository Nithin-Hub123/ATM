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
import java.sql.SQLException;

import java.util.Date;
import java.text.SimpleDateFormat;

@WebServlet("/AddNewuser")
public class AddNewUesr extends HttpServlet {
	private static final long serialVersionUID = 1L;       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		  //add Current  date&time Format
	     Date date = new Date();
		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String formattedDate = dateFormat.format(date);
		String account_number = request.getParameter("account_number");
		String uname = request.getParameter("username");
		String uemail = request.getParameter("email");	
		String upwd = request.getParameter("password");
		String umobile = request.getParameter("phone");
		String gender = request.getParameter("Gender");
		String address = request.getParameter("address");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		/*dispatcherconnection con = null;*/
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSl=false","root","admin@123");
			PreparedStatement pst = con.prepareStatement("insert into users(account_number,uname,upwd,uemail,umobile,gender,address,Date)values(?,?,?,?,?,?,?,?)");
			pst.setString(1,account_number);
			pst.setString(2,uname);
			pst.setString(3,upwd);
			pst.setString(4,uemail);
			pst.setString(5,umobile);
			pst.setString(6,gender);
			pst.setString(7,address);
			pst.setString(8,formattedDate);//add Current  date&time Format
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("admin-dashboard.jsp");
			
			if (rowCount > 0) 
			{
			   request.setAttribute("status1", "success"); 			  			
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
