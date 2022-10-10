package com.aspiresys;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class CustomerLoggedin
 */
public class CustomerLoggedin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoggedin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 String Username=request.getParameter("Username");
	        String Password=request.getParameter("Password");
	        String Email = request.getParameter("EmailId");
	        Connection connection=null;
	        int temp=0;



	       try
	        {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/dna_petz", "root", "Aspire@123");
	            Statement statement = connection.createStatement();
	            ResultSet resultset=statement.executeQuery("select * from user_signup");
	            while(resultset.next())
	            {
	                if(resultset.getString("userName").equals(Username) && resultset.getString("passwd").equals(Password))
	                {	
	                	 HttpSession  session = request.getSession();
		                 session.setAttribute("Email", Email);
	                	response.sendRedirect("CustomerHome2.jsp");
	                    temp = 1;
	                   
	                    
	                }
	            }
	            if(temp==0)
	            {
	                response.sendRedirect("error.html");
	            }
	            
	        }
	        catch(Exception e)
	        {
	            response.sendRedirect("Report.jsp");
	        }
	}

}
