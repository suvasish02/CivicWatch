package com.civicwatch.servlets;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sentfirid
 */
@WebServlet("/sentfirid")
public class sentfirid extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public sentfirid() {
        super();
    }
    String text="";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		String email=(String) session.getAttribute("email");
		String iFName=(String) request.getAttribute("iFName");
		String firid=(String) request.getAttribute("firid");
		String subject="CivicWatch : Account Recovery Password !!";
		String to=email;
		String from="info.civicwatch.service@gmail.com";
		text="Hello " +  iFName + ", Your FIR ID is  " + firid;
		sendEmail(text,subject,to,from);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
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
