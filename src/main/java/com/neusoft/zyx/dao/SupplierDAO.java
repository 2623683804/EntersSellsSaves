package com.neusoft.zyx.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Supplier;

@Repository
public class SupplierDAO extends SqlSessionDaoSupport implements SupplierDAOI{

	@Override @Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public List<Supplier> queryAll(Supplier s) {
		return getSqlSession().selectList("supplier.queryAll", s);
	}

	@Override
	public int add(Supplier s) {
		return getSqlSession().insert("supplier.add", s);
	}

	@Override
	public Supplier queryById(Integer supno) {
		return getSqlSession().selectOne("supplier.queryById", supno);
	}

	@Override
	public int update(Supplier s) {
		return getSqlSession().update("supplier.update",s);
	}

	@Override
	public int delete(String supnos) {
		// TODO Auto-generated method stub
		Map m = new HashMap();
		m.put("supnos", supnos);
		return getSqlSession().delete("supplier.delete", m);
	}
	
}
