package tommy.web.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		System.out.println(id);
		System.out.println(pwd);

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException cnfe){
			cnfe.printStackTrace();
		}
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mytest","mytest");
			pstmt = conn.prepareStatement("select pass from login where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				String dbPass = rs.getString("pass");
				if (pwd.equals(dbPass)) {
					HttpSession session = request.getSession();
					session.setAttribute("user", id);
					System.out.println("Login sucesse !");
				}else {
					System.out.println("Wrong Password!");
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();	
		} finally {
			try {if(rs != null) rs.close();}catch(SQLException e) {}
			try {if(pstmt != null) pstmt.close();}catch(SQLException e) {}
			try {if(conn != null) conn.close();}catch(SQLException e) {}

		}
		response.sendRedirect("Login");
	}
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
}