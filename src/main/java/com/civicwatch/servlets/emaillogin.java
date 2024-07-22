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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class emaillogin
 */
@WebServlet("/emaillogin")
public class emaillogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emaillogin() {
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
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            PreparedStatement ps=con.prepareStatement("select * from user where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet res=ps.executeQuery();
            	 
                 
            if(res.next()) {
            	HttpSession session=request.getSession();  
            	session.setAttribute("email",email);  
                 session.setAttribute("name", res.getString(1));
                 session.setAttribute("phone", res.getString(2));
                 session.setAttribute("address", res.getString(6));
            	
            	request.getRequestDispatcher("./dashboard.jsp").forward(request, response);
            }
            else {
            	System.out.println(email);
            	System.out.println(password);
            	System.out.println("Failure");
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
