package com.neusoft.lhs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Page;
import com.neusoft.entity.PurInput;

@Repository
public class PurInputDAO extends SqlSessionDaoSupport implements PurInputDAOI{

	//注意，需要手动在这里覆盖setSQLSessionFactory()的方法
	@Override@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	};
	

	@Override
	public int add(PurInput puri) {
		
		return  getSqlSession().insert("purinput.add",puri);
	}
	
	@Override
	public Integer searchPuridCount(PurInput puri) {
		return getSqlSession().selectOne("searchFyCount",puri);
	}
	
	@Override
	public List<PurInput> queryAll(Page page) {
		
		return getSqlSession().selectList("purinput.queryAll", page);
	}
	
	@Override
	public int update(PurInput puri){
		return getSqlSession().update("purinput.update", puri);
	}
	@Override
	public int updateC(PurInput puri){//
		return getSqlSession().update("purinput.updateC", puri);
	}
	@Override
	public int updateG(PurInput puri){//
		return getSqlSession().update("purinput.updateG", puri);
	}
	@Override
	public int updateCX(PurInput puri){
		return getSqlSession().update("purinput.updateCX", puri);
	}
	
	@Override
	public int delete(Integer purinid) {
		return getSqlSession().delete("purinput.delete", purinid);
	}

	@Override
	public PurInput queryById(Integer purinid) {
		return getSqlSession().selectOne("purinput.queryById", purinid);
	}


	@Override
	public List<PurInput> queryById1(Integer purinid) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("purinput.queryById", purinid);
	}


	@Override
	public List<PurInput> queryAll(PurInput puri) {
		
		return getSqlSession().selectList("purinput.queryAll1", puri);
	}


}
