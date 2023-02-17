package org.iclass.dao;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.Cart;

import mybatis.SqlSessionBean;

public class CartDao {
	private static CartDao dao = new CartDao();
	private CartDao() {}
	public static CartDao getInstance() {
		return dao;
	}
	
	public int insert(Cart vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		mapperSession.insert("carts.insert",vo);
		mapperSession.commit();
		mapperSession.close();
		return vo.getCcode();		
	}
	
	public int update(Cart vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.update("carts.update",vo);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
	

}
