package com.neusoft.zyx.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Customer;

@Repository
public class CustomerDAO extends SqlSessionDaoSupport implements CustomerDAOI{

	@Override @Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public List<Customer> queryAll(Customer c) {
		return getSqlSession().selectList("customer.queryAll", c);
	}

	@Override
	public int add(Customer c) {
		return getSqlSession().insert("customer.add", c);
	}

	@Override
	public Customer queryById(Integer cusno) {
		return getSqlSession().selectOne("customer.queryById", cusno);
	}

	@Override
	public int update(Customer c) {
		return getSqlSession().update("customer.update",c);
	}

	@Override
	public int delete(String cusnos) {
		// TODO Auto-generated method stub
		Map m = new HashMap();
		m.put("cusnos", cusnos);
		return getSqlSession().delete("customer.delete", m);
	}
	
}
