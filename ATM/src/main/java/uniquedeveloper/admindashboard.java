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


import java.io.*;

import java.sql.*;

//import javax.servlet.ServletException;

//import javax.servlet.http.*;

@WebServlet("/admin-dashbord")
public class admindashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	}
	
}
	
	
	
	
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	//{
		//RequestDispatcher dispatcher = null;
		//int i;
	//	Statement st=null;
		//Connection con = null;
		//ResultSet rs=null;
		//PrintWriter out =response.getWriter();
		//response.setContentType("text/HTML");
		//String account_number = request.getParameter("account_number");
		
	//	try 
		//{
			//i++;
		//	Class.forName("com.mysql.cj.jdbc.Driver");
		 //   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSl=false","root","admin@123");
		//    st=con.createStatement();
		    
		//	String qry="select account_number from users";			
		 //   rs=st.executeQuery(qry);                

              /* Printing column names */
             // ResultSetMetaData rsmd=rs.getMetaData();
		    
		    
		   // out.println("<tr>");
		   // out.println("<th>account_number</th>");
		   // out.println("</tr>");

            //  while(rs.next())

            //  {
            	 // out.println("<tr>");
            //	  out.println("<th>"+ rs.getString("account_number") +"</th> ");
            	  //out.println("</tr>");
            //  }
           // 
          // }
		   // catch (Exception ex)
           // {

             //e2.printStackTrace();

           // }
//}




	


