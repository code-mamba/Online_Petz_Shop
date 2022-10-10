package com.aspiresys;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		String AdminEmail = request.getParameter("AdminEmail");
		String AdminPassword = request.getParameter("AdminPassword");
		String Email1 = "dhanushbaskaran2000@gmail.com";
		String Password1 = "Dhanush@2000";
		String Email2 = "amarnath0862@gmail.com" ;
		String Password2 = "Amarnath@2000";
		
		if(AdminEmail.equals(Email1) && AdminPassword.equals(Password1)) {
			response.sendRedirect("success.html");
		}
		else if (AdminEmail.equals(Email2)&& AdminPassword.equals(Password2)) {
			response.sendRedirect("AddPet.jsp");
		}
		else {
			response.sendRedirect("error.html");
		}
		doGet(request, response);
	}

}
