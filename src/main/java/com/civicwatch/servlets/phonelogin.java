package com.civicwatch.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class phonelogin
 */
@WebServlet("/phonelogin")
public class phonelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public phonelogin() {
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
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            PreparedStatement ps=con.prepareStatement("select phone,password from admin where phone=? and password=?");
            ps.setString(1, phone);
            ps.setString(2, password);
            ResultSet res=ps.executeQuery();
            if(res.next()) {
            	request.getRequestDispatcher("./Admin.jsp").forward(request, response);
            }
            else {
            	request.getRequestDispatcher("./phone_login.jsp").forward(request, response);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
