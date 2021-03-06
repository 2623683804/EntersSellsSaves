package com.neusoft.lhs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.PurReturn;

@Repository
public class PurReturnDAO extends SqlSessionDaoSupport implements PurReturnDAOI {

	// 注意，需要手动在这里覆盖setSQLSessionFactory()的方法
	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public int add(PurReturn purr) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("purreturn.add", purr);
	}

	@Override
	public List<PurReturn> queryAll(PurReturn purr) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("purreturn.queryAll", purr);
	}

	@Override
	public int update(PurReturn purr) {

		return getSqlSession().update("purreturn.update", purr);
	}

	@Override
	public int updateC(PurReturn purr) {

		return getSqlSession().update("purreturn.updateC", purr);
	}
	
	@Override
	public PurReturn queryById(Integer puroutid) {

		return getSqlSession().selectOne("purreturn.queryById", puroutid);
	}

	@Override
	public int delete(Integer puroutid) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("purreturn.delete", puroutid);
	};

}
