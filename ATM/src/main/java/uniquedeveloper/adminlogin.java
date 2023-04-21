package uniquedeveloper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/adimin-login")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		//HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSL=false","root","admin@123");
			PreparedStatement pst = con.prepareStatement("select * from users where uemail = ? and upwd = ? ");
		    pst.setString(1,uemail);
		    pst.setString(2,upwd);
		    ResultSet rs = pst.executeQuery();
		    if (rs.next())
		    {
		    	//session.setAttribute("name",rs.getString("uname"));
		    	dispatcher = request.getRequestDispatcher("admin-dashboard.jsp");
		    }
		    else
		    {
		    	request.setAttribute("status","failed");
		    	dispatcher = request.getRequestDispatcher("index.jsp");
				
		    }
			dispatcher.forward(request, response);
			
		}
		catch (Exception e)
		{
		   e.printStackTrace();
		}

	
	}

}
