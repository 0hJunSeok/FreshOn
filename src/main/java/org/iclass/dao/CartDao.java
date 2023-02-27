package org.iclass.dao;

import java.util.List;

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
	
	public List<Cart> list(String id) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<Cart> list = mapperSession.selectList("carts.selectlist", id);
		mapperSession.close();
		return list;
	}
	
	public int delete(int ccode) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.delete("carts.delete",ccode);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
	
	public Cart selectByCcode(int ccode) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		Cart vo = mapperSession.selectOne("carts.selectByCcode",ccode);
		mapperSession.close();
		return vo;
	}
}
