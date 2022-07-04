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

	//������
	public LifeCycle() {
		System.out.println("LifeServlet�� ������ ȣ��� ...");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("init() ȣ��� ...");
		System.out.println("�ʱ�ȭ �޼ҵ� ���� ...");

		// ServletContext �ʱ� �Ƕ���� �� �б�
		company = getServletContext().getInitParameter("company");
		manager = getServletContext().getInitParameter("manager");

		//ServletConfig �ʱ� �Ƕ���� �� �б�
		tel = getServletConfig().getInitParameter("tel");		
		email = getServletConfig().getInitParameter("email");
	}

	@Override
	public void destroy() {
		System.out.println("destroy() ȣ��� ...");
	}

	@Override
	protected void service(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service() ȣ��� ...");
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

