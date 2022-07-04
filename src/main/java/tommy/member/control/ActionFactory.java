package tommy.member.control;

import tommy.member.action.Action;
import tommy.member.action.IndexAction;

public class ActionFactory {
	private static ActionFactory factory;
	private ActionFactory() {}
	public static synchronized ActionFactory getInstance() {
		if(factory == null) {
			factory = new ActionFactory();
		}
		return factory;
	}
	public Action getAction(String cmd) {
		Action action = null;
		switch (cmd) {
		case "index" : action = new IndexAction(); break;
//		case "login" : action = new LoginFormAction(); break;
//		case "loginProc" : action = new LoginProcAction(); break;
//		case "logout" : action = new LogoutAction(); break;
//		case "regForm" : action = new RegFormAction(); break;
//		case "regProc" : action = new RegProcAction(); break;
//		case "modifyForm" : action = new ModifyFormAction(); break;
//		case "deleteFrom" : action = new DeleteFormAction(); break;
//		case "deleteProc" : action = new DeleteProcAction(); break;
//		case "idCheck" : action = new IdCheckAction(); break;
//		case "zipcode" : action = new ZipcodeAction(); break;
		default : action = new IndexAction(); break;
		}
		return action;
	}

}
