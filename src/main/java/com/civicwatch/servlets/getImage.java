package com.civicwatch.servlets;

import java.io.IOException;
import java.io.InputStream;
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
 * Servlet implementation class getImage
 */
@WebServlet("/getImage")
public class getImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String imageId = (String) request.getAttribute("mobile");
		System.out.println(imageId);
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/sdp2024";
        String user = "root";
        String password = "suva@1234";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            String sql = "SELECT image FROM user WHERE mobile_number = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, imageId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                InputStream inputStream = rs.getBinaryStream("image");
                byte[] buffer = new byte[16177216];
                int bytesRead;

                response.setContentType("image/jpeg");
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    response.getOutputStream().write(buffer, 0, bytesRead);
                }
            }
            rs.close();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if (conn != null) {
          	  try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
          }
       }
        request.setAttribute("mob", imageId);
        request.getRequestDispatcher("./dashboard.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
