package org.iclass.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.User;

import mybatis.SqlSessionBean;

public class NewMemberDao {
	private static NewMemberDao dao = new NewMemberDao();
	private NewMemberDao() {}
	public static NewMemberDao getInstance() {
		return dao;
	}

	public User login(Map<String, String> map) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		User vo = mapperSession.selectOne("newmember.login",map);
		mapperSession.close();
		return vo;
	}
	public int insert(User vo1){
		SqlSession mapperSession = SqlSessionBean.getSession();
		int vo = mapperSession.insert("newmember.insert",vo1);
		mapperSession.commit();
		mapperSession.close();
		return vo;
		
	}
}