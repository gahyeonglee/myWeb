package tommy.member.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tommy.member.action.Action;

public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		String cmd = request.getParameter("cmd");
		if (cmd != null) {
			ActionFactory factory = ActionFactory.getInstance();
			Action action = factory.getAction(cmd);
			ActionForward af = action.execute(request, response);
			if(af.isRedirect()) {
				response.sendRedirect(af.getUrl());
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else {
			PrintWriter out = response.getWriter();
			out.print("<html>");
			out.print("<head><title>Error</title></head>");
			out.print("<body>");
			out.print("<h4>not found</h4>");
			out.print("<h4>http://localhost:8080/myWeb/mvcMem/member.mdo?cmd=</h4>");
			out.print("</body>");
			out.print("</html>");
		}
	}

}
