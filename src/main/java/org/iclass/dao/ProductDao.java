package org.iclass.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.Product;

import mybatis.SqlSessionBean;

public class ProductDao {
	private static ProductDao dao = new ProductDao();
	private ProductDao() {}
	public static ProductDao getInstance() {
		return dao;
	}
	
	public List<Product> list(Map<String, String> map) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<Product> list = mapperSession.selectList("products.listAll",map);
		mapperSession.close();
		return list;
	}
	
	public int insert(Product vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		mapperSession.insert("products.insert",vo);
		mapperSession.commit();
		mapperSession.close();
		return vo.getPcode();		
	}
	
	public Product selectByPcode(int pcode) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		Product vo = mapperSession.selectOne("products.selectByPcode",pcode);
		mapperSession.close();
		return vo;
	}
	
	
}
