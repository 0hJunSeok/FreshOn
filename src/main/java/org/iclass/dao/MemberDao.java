package org.iclass.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.User;

import mybatis.SqlSessionBean;

public class MemberDao {
	private static MemberDao dao = new MemberDao();
	private MemberDao() {}
	public static MemberDao getInstance() {
		return dao;
	}

	public User login(Map<String, String> map) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		User vo = mapperSession.selectOne("newmember.login",map);
		mapperSession.close();
		return vo;
	}
	
}