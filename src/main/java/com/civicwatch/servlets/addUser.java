package com.civicwatch.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class addUser
 */
@WebServlet("/addUser")
@MultipartConfig(maxFileSize = 16177216)
public class addUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addUser() {
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
		String fullname=request.getParameter("fullName");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String aadhar=request.getParameter("aadhar");
		String presentAddress=request.getParameter("presentAddress");
		String permanentAddress=request.getParameter("permanentAddress");
		Part part = request.getPart("uploadImage");
		request.setAttribute("mobile", phone);
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
            InputStream is = part.getInputStream();
            ps.setString(1, fullname);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, aadhar);
            ps.setString(6, presentAddress);
            ps.setString(7, permanentAddress);
            ps.setBlob(8, is);
            int result = ps.executeUpdate();
            if(result>0) {
            	String message=fullname +" Let's Join hand and work for Society, Kindly Login to continue";
            	request.setAttribute("message",message );
            	request.getRequestDispatcher("./success.jsp").include(request, response);
            }
            else {
            	request.getRequestDispatcher("./fail.jsp").include(request, response);
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
