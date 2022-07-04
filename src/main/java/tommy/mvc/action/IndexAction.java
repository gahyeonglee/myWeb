package tommy.mvc.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tommy.mvc.control.ActionForward;

public class IndexAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("IndexÀÇ excute() ¼öÇàµÊ ... ");
		return new ActionForward("index.jsp", false);
		
	}

}
