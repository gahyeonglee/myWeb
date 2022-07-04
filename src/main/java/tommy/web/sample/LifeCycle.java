package tommy.web.sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycle extends HttpServlet {
	private String company;
	private String manager;
	private String tel;
	private String email;

	//생성자
	public LifeCycle() {
		System.out.println("LifeServlet의 생성자 호출됨 ...");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("init() 호출됨 ...");
		System.out.println("초기화 메소드 수행 ...");

		// ServletContext 초기 피라미터 값 읽기
		company = getServletContext().getInitParameter("company");
		manager = getServletContext().getInitParameter("manager");

		//ServletConfig 초기 피라미터 값 읽기
		tel = getServletConfig().getInitParameter("tel");		
		email = getServletConfig().getInitParameter("email");
	}

	@Override
	public void destroy() {
		System.out.println("destroy() 호출됨 ...");
	}

	@Override
	protected void service(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service() 호출됨 ...");
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
}

