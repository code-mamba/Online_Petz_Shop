package com.aspiresys;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class CustomerBuyPet
 */
public class CustomerBuyPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerBuyPet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String PetId=request.getParameter("PetId");
		String PetQuantity=request.getParameter("PetQuantity");
		String name = request.getParameter("name");
		String mobile=request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		System.out.println(PetId+' '+PetQuantity);
		int Quantity = Integer.parseInt(PetQuantity);
		PrintWriter out=response.getWriter();
		Connection connection=null;
		 try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/dna_petz", "root", "Aspire@123");
	            Statement statement = connection.createStatement();
	            //String ProductId="103";
	            ResultSet resultset=statement.executeQuery("select * from admin_add_pets where productId="+PetId+";");
	            
	            
	            
	            if(resultset.next())
	            {
	            	String ProductName = resultset.getString("productName");
	                String tprice=resultset.getString(3);
	                int i = Integer.parseInt(tprice);
	                int totalprice=i*Quantity;
	                out.println(totalprice);
	                statement.executeUpdate("insert into customer_cart(customerName,mobileNo,customerEmail,address,ProductId,ProductName,ProductQuantity,Totalcost)values('"+name+"','"+mobile+"','"+email+"','"+address+"','"+PetId+"','"+ProductName+"','"+PetQuantity+"','"+totalprice+"')");
	                response.sendRedirect("CartAdded.html");
	            }
	            
	        }
	        catch (Exception e) {
	            // TODO: handle exception
	            System.out.println(e);
	            e.printStackTrace();
	        }

	}
//		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
