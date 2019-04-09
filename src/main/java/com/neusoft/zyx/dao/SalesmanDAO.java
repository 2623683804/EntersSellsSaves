package com.neusoft.zyx.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Salesman;
@Repository
public class SalesmanDAO extends SqlSessionDaoSupport implements SalesmanDAOI{

	@Override @Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public List<Salesman> queryAll(Salesman s) {
		return getSqlSession().selectList("salesman.queryAll", s);
	}

	@Override
	public int add(Salesman s) {
		return getSqlSession().insert("salesman.add", s);
	}

	@Override
	public Salesman queryById(Integer salesno) {
		return getSqlSession().selectOne("salesman.queryById", salesno);
	}

	@Override
	public int update(Salesman s) {
		return getSqlSession().update("salesman.update",s);
	}

	@Override
	public int delete(String salesnos) {
		// TODO Auto-generated method stub
		Map m = new HashMap();
		m.put("salesnos", salesnos);
		return getSqlSession().delete("salesman.delete", m);
	}
	
}
