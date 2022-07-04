package tommy.web.sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitParam extends HttpServlet {
	private String company;
	private String manager;
	private String tel;
	private String email;

	@Override
	public void init() throws ServletException {
		System.out.println("초기화 메소드 수행 ...");

		// ServletContext 초기 피라미터 값 읽기
		company = getServletContext().getInitParameter("company");
		manager = getServletContext().getInitParameter("manager");

		//ServletConfig 초기 피라미터 값 읽기
		tel = getServletConfig().getInitParameter("tel");		
		email = getServletConfig().getInitParameter("email");		
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset = UTF-8");
		PrintWriter out = response.getWriter();

		try {
			response.setContentType("text/html;charset=euc-kr");
			out.println("<html>");
			out.println("<body>");
			out.println("<li>company : " + company + "</li>");
			out.println("<li>manager : " + manager + "</li>");
			out.println("<li>tel : " + tel + "</li>");
			out.println("<li>email : " + email + "</li>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}
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
