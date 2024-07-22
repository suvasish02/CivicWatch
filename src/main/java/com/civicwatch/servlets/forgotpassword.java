package com.civicwatch.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class forgotpassword
 */
@WebServlet("/forgotpassword")
public class forgotpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotpassword() {
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
	String password="";
	String text="";
	String name="";
	String email="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp2024", "root", "suva@1234");
            PreparedStatement ps=con.prepareStatement("select email,password,fullname from user where email=?");
            ps.setString(1, email);
            ResultSet res=ps.executeQuery();
            if(res.next()) {
            	password=res.getString(2);
            	name=res.getString(3);
            	request.getRequestDispatcher("./otpsuccess.jsp").include(request, response);
            	text="Hello " +  name + ", Your Account Password is  " + password;
        		String subject="CivicWatch : Account Recovery Password !!";
        		String to=email;
        		String from="info.civicwatch.service@gmail.com";
        		sendEmail(text,subject,to,from);
            }
            else {
            	request.getRequestDispatcher("./otpfail.jsp").include(request, response);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		  
	}
	private void sendEmail(String message, String subject, String to, String from) {
		String host="smtp.gmail.com";
		Properties prop=System.getProperties();
		System.out.println("Properties "+prop);
		 prop.put("mail.smtp.host", host);
		 prop.put("mail.smtp.port", 587);
		 prop.put("mail.smtp.ssl.trust", host);
	     prop.put("mail.smtp.auth", "true");
	     prop.put("mail.smtp.starttls.enable", "true");
	     prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
		String username="info.civicwatch.service@gmail.com";
		String password="vytc chaz mwku unzk";
		Session session=Session.getInstance(prop,new Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(username, password);
			}
		});
		
		try {
			Message message1=new MimeMessage(session);
			message1.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message1.setFrom(new InternetAddress(from));
			message1.setSubject(subject);
			message1.setText(text);
			
			Transport.send(message1);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
