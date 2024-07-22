package com.civicwatch.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addFir
 */
@WebServlet("/addFir")
public class addFir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addFir() {
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
		
		String district=request.getParameter("district");
		String police_station=request.getParameter("ps");
		String date_of_occur=request.getParameter("doc");
		String time_of_occur=request.getParameter("toc");
		String iname=request.getParameter("iName");
		String iFName=request.getParameter("iFName");
		String iMno=request.getParameter("iMno");
		String idob=request.getParameter("idob");
		String ination=request.getParameter("ination");
		String iaadhar=request.getParameter("iaadhar");
		String ioccupation=request.getParameter("ioccupation");
		String iaddress=request.getParameter("iaddress");
		String crimetype=request.getParameter("crimetype");
		String detailofcrime=request.getParameter("detailofcrime");
		String firid=iMno+"#"+iaadhar.substring(0,4);
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            PreparedStatement ps = con.prepareStatement("insert into fir values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            PreparedStatement ps1 = con.prepareStatement("insert into fir_status values(?,?)");
            
            ps.setString(1, firid);
            ps.setString(2, district);
            ps.setString(3, police_station);
            ps.setString(4, date_of_occur);
            ps.setString(5, time_of_occur);
            ps.setString(6, iname);
            ps.setString(7, iFName);
            ps.setString(8, idob);
            ps.setString(9, ination);
            ps.setString(10, iaadhar);
            ps.setString(11, ioccupation);
            ps.setString(12, iaddress);
            ps.setString(13, crimetype);
            ps.setString(14, detailofcrime);
            ps.setString(15, iMno);
            ps1.setString(1, firid);
            ps1.setString(2, "Ongoing");
            int result = ps.executeUpdate();
            if(result>0) {
            	ps1.executeUpdate();
            	HttpSession session=request.getSession();
            	session.setAttribute("firid", firid);
            	request.setAttribute("firid", firid);
            	request.setAttribute("iFName", iname);
                session.setAttribute("details", detailofcrime);
                String message=iFName +"Fir Has Been successfully Lodged . Your Fir ID is " + firid + "Fir Id has Sent to Your Mail.";
            	request.setAttribute("message",message );
            	request.getRequestDispatcher("./firidsuccess.jsp").include(request, response);
            	 RequestDispatcher dispatcher = request.getRequestDispatcher("sentfirid");
                 dispatcher.include(request, response);
            	
            	
            }
            else {
            	request.getRequestDispatcher("./firidfail.jsp").include(request, response);
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
