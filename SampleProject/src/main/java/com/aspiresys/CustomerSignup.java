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
import java.sql.Statement;
import static java.lang.System.*;



/**
 * Servlet implementation class CustomerSignup
 */
public class CustomerSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerSignup() {
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
		String name = request.getParameter("userName");
		String mobile = request.getParameter("mobileNo");
		String email = request.getParameter("emailId");
		String password = request.getParameter("pass");
		doGet(request, response);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DNA_petz","root","Aspire@123");
			Statement st = con.createStatement();
			System.out.println(email);
			st.executeUpdate("insert into user_signup(userName, mobileNo, email, passwd) values('"+name+"','"+mobile+"','"+email+"','"+password+"')");
			HttpSession session = request.getSession();
			session.setAttribute("Email", email);
			response.sendRedirect("CustomerPetView2.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			response.sendRedirect("error.html");
		}
	}

}
