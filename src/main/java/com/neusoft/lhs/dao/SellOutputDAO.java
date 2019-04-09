package com.neusoft.lhs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.SellOutput;

@Repository
public class SellOutputDAO extends SqlSessionDaoSupport implements SellOutputDAOI{

	//注意，需要手动在这里覆盖setSQLSessionFactory()的方法
			@Override@Autowired
			public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
				super.setSqlSessionFactory(sqlSessionFactory);
			};
	
	@Override
	public int add(SellOutput sell) {
		return getSqlSession().insert("SellOutput.add", sell);
	}

	@Override
	public List<SellOutput> queryAll(SellOutput sell) {
		return getSqlSession().selectList("SellOutput.queryAll", sell);
	}

	@Override
	public int update(SellOutput sell) {
		return getSqlSession().update("SellOutput.update", sell);
	}
	@Override
	public int updateK(SellOutput sell) {
		return getSqlSession().update("SellOutput.updateK", sell);
	}
	@Override
	public int updateC(SellOutput sell) {
		return getSqlSession().update("SellOutput.updateC", sell);
	}
	@Override
	public int updateD(SellOutput sell) {
		return getSqlSession().update("SellOutput.updateD", sell);
	}
	@Override
	public SellOutput queryById(Integer selloutid) {
		return getSqlSession().selectOne("SellOutput.queryById", selloutid);
	}

	@Override
	public int delete(Integer selloutid) {
		return getSqlSession().delete("SellOutput.delete", selloutid);
	}

	

}
