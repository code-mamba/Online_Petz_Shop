package com.aspiresys;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.sql.DataSource;

/**
 * Servlet implementation class AdminDeleteAcessories
 */
public class AdminDeleteAcessories extends HttpServlet {
	@Resource(name = "jdbc/DNA_petz")
	DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteAcessories() {
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
		
		String AccessoryId = request.getParameter("AccessoryId");
		System.out.println(AccessoryId);
		try {
			
			Connection con = dataSource.getConnection();
			Statement st = con.createStatement();
			st.execute("DELETE FROM admin_add_accessories WHERE accessoryId ='"+AccessoryId+"'");
			response.sendRedirect("DeletedSuccessfully.html");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			response.sendRedirect("error.html");
		}
	}

}
