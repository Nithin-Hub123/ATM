package uniquedeveloper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;

import java.sql.Connection;
//import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.text.SimpleDateFormat;


@WebServlet("/registor")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession(true);
		 
		
		 Date date = new Date();
		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String formattedDate = dateFormat.format(date);

		
		 
		String account_number = request.getParameter("account_number");
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");		
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		String gender = request.getParameter("subjects");
		String address = request.getParameter("Address");
	
		
		//String dateString = sdf.format(date);	
		RequestDispatcher dispatcher = null;
		Connection con = null;
	
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
			pst.setString(8,formattedDate);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
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
