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

import java.util.Date;
import java.text.SimpleDateFormat;

@WebServlet("/deposit")
public class Deposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    HttpSession session = request.getSession();
	    String uname = (String) session.getAttribute("name");
	

	    
	    double depositAmount = Double.parseDouble(request.getParameter("depositAmount"));	   
	    double creditAmount1 = Double.parseDouble(request.getParameter("depositAmount"));
		
	    
	    
	    //add Current  date&time Format
	     Date date = new Date();
		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String formattedDate = dateFormat.format(date);
	    
	    Connection connection = null;
	    PreparedStatement selectStatement = null;
	    PreparedStatement updateStatement = null;	   
	    PreparedStatement insertStatement = null;
	    ResultSet result = null;
	    
	    
	    RequestDispatcher dispatcher = null;
	    try 
	    {
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm?useSSL=false","root","admin@123");
	        String selectSql = "SELECT balance,account_number FROM users WHERE uname = ?";
	        selectStatement = connection.prepareStatement(selectSql);
	        selectStatement.setString(1,uname);
	        result = selectStatement.executeQuery();
	        
	       		
			  
		
	        if (result.next())
	        {
	         //  id = result.getInt("id");
	           
	            double currentBalance = result.getDouble("balance");
	            double balance = currentBalance + depositAmount;
	            
	            int account_No = result.getInt("account_number");          
	            
	            String updateSql = "UPDATE users SET balance = ? WHERE uname = ?";
	            updateStatement = connection.prepareStatement(updateSql);  
	            updateStatement.setDouble(1,balance);
	            updateStatement.setString(2,uname);
	           
	            int rowsAffected = updateStatement.executeUpdate();
	            
	            
               String insertsql="INSERT INTO test (id,credit,account_No,end_balance,Date)values((select id from users where uname=?),?,?,?,?)";
 	            insertStatement=connection.prepareStatement(insertsql);
 	            insertStatement.setString(1,uname);
 	            insertStatement.setDouble(2,creditAmount1);
 	            insertStatement.setDouble(3,account_No);
 	            insertStatement.setDouble(4,balance);
 	            insertStatement.setString(5,formattedDate);//add Current  date&time Format
			
 	            int rowsAffected1 = insertStatement.executeUpdate();
             
	            
				dispatcher = request.getRequestDispatcher("index.jsp");
	            if (rowsAffected > 0) 
	            {
	                
	            	request.setAttribute("status1", "success"); 		
	            } 
	            else 
	            {
	               // response.getWriter().write("error");
	            }
	            dispatcher.forward(request,response);

                dispatcher = request.getRequestDispatcher("index.jsp");
                if (rowsAffected1 > 0) 
                {
                    //response.getWriter().write("success");
                    //request.setAttribute("status", "success");      
                } 
                else 
                {
                   // response.getWriter().write("error");
                }
                dispatcher.forward(request,response);
	        
                
	        }
	
	    	

			
	    }
	    catch (SQLException e)
	    {
	        e.printStackTrace();
	    }
	    finally
	    {
	        try
	        {
	            if (result != null) result.close();
	            if (selectStatement != null) selectStatement.close();
	            if (updateStatement != null) updateStatement.close();
	            if (connection != null) connection.close();
	        } catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	}
}
