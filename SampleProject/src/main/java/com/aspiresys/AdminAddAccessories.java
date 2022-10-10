package com.aspiresys;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Servlet implementation class AdminAddAccessories
 */
public class AdminAddAccessories extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddAccessories() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String AccessoryId = request.getParameter("AccessoryId");
		String AccessoryName = request.getParameter("AccessoryName");
		String AccessoryPrice = request.getParameter("AccessoryPrice");
		String PetCategory = request.getParameter("PetCategory");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DNA_petz","root","Aspire@123");
			Statement st = con.createStatement();
			st.executeUpdate("insert into admin_add_accessories(accessoryId, accessoryName, accessoryPrice, petCategory) values('"+AccessoryId+"','"+AccessoryName+"','"+AccessoryPrice+"','"+PetCategory+"')");
			response.sendRedirect("success.html");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			response.sendRedirect("error.html");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
