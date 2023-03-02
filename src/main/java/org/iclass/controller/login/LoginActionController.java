package org.iclass.controller.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.MemberDao;
import org.iclass.vo.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//new RequestKeyValue("/login", "POST")
public class LoginActionController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(LoginActionController.class);
	@Override
	public void handle(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("password", password);
		MemberDao dao = MemberDao.getInstance();
		User vo = dao.login(map);
		
		String url= request.getContextPath();
		String back = (String) session.getAttribute("back");
		logger.info("::::::::: LoginActionController back={} ::::::::",back);
		if(vo != null) {
			session.setAttribute("user",vo); 
			if(back!=null) { 
				url=back;
				session.removeAttribute("back");	
			}	
		}else {		
			url="login?incorrect=y";
		}
		
		response.sendRedirect(url);		
	}

}