package tommy.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageProcess implements CommandProcess{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setAttribute("massage", "��û �Ƕ���ͷ� ��ɾ� ����");
		return "/mvc/process.jsp";
	}

}
