package com.neusoft.zyx.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Commodity;

@Repository
public class CommodityDAO extends SqlSessionDaoSupport implements CommodityDAOI{

	@Override @Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public List<Commodity> queryAll(Commodity c) {
		return getSqlSession().selectList("commodity.queryAll", c);
	}

	@Override
	public int add(Commodity c) {
		return getSqlSession().insert("commodity.add", c);
	}

	@Override
	public Commodity queryById(Integer comno) {
		return getSqlSession().selectOne("commodity.queryById", comno);
	}

	@Override
	public int update(Commodity c) {
		return getSqlSession().update("commodity.update",c);
	}

	@Override
	public int delete(String comnos) {
		// TODO Auto-generated method stub
		Map m = new HashMap();
		m.put("comnos", comnos);
		return getSqlSession().delete("commodity.delete", m);
	}
	
}
