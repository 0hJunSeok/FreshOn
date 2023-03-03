package org.iclass.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.NewMemberDao;
import org.iclass.vo.User;



public class JoinActionController implements Controller {
 @Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	User vo = new User(request.getParameter("id"),
			request.getParameter("password"),
			request.getParameter("name"),
			request.getParameter("mail1")+request.getParameter("mail2"),
			request.getParameter("address")+request.getParameter("address_detail"),
			request.getParameter("phone"),null);
	NewMemberDao dao = NewMemberDao.getInstance();
	int result = 0;
	result = dao.insert(vo);
	System.out.println(vo);
	//response 에 출력할 객체 생성
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	
	out.print("<script>");
	if(result==1) {
		out.print("alert('회원 등록을 완료했습니다.');");
	}else {
		out.print("alert('회원 등록 문제가 발생했습니다.');");
	}
	out.print("location.href='/FreshOn'");
	out.print("</script>");
}
}
