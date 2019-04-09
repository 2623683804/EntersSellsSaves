package com.neusoft.lhs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Commodity;

@Repository
public class StockDAO extends SqlSessionDaoSupport implements StockDAOI{

	//注意，需要手动在这里覆盖setSQLSessionFactory()的方法
	@Override@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	};

	@Override
	public List<Commodity> queryAll(Commodity c) {
		return getSqlSession().selectList("commodity.queryAll", c);
	}
	
}
