package com.civicwatch.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class instantcomplain
 */
@WebServlet("/instantcomplain")
public class instantcomplain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public instantcomplain() {
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            String name=request.getParameter("name");
            String contact=request.getParameter("contact");
            String email=request.getParameter("email");
            String location=request.getParameter("loc");
            String pincode=request.getParameter("zip");
            String co_det=request.getParameter("det");
            String q="insert into instant values(?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, name);
            ps.setString(2, contact);
            ps.setString(3, email);
            ps.setString(4, location);
            ps.setString(5, pincode);
            ps.setString(6, co_det);
            int res=ps.executeUpdate();
            if(res>0) {
            	request.getRequestDispatcher("./instantsuc.jsp").include(request, response);
            }
            else {
            	request.getRequestDispatcher("./index.jsp").include(request, response);
            }
		}catch(Exception e) {
			
		}
	}

}
