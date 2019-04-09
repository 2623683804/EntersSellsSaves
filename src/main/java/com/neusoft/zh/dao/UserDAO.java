package com.neusoft.zh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neusoft.entity.Power;
import com.neusoft.entity.User;

@Repository
public class UserDAO extends SqlSessionDaoSupport implements UserDAOI {

	//注意：需要手动在这里覆盖 setSQLSessionFactory()的方法，并手动@Autowired
	@Override @Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	
	@Override
	public User queryByUname(String uname) {
		return getSqlSession().selectOne("user.queryByUname", uname);
	}


	@Override
	public int add(User u) {
		return getSqlSession().insert("user.zhuce", u);
	}

	

	@Override
	public User validateLogin(String uname, String pass,String ctype) {
		User u = new User(null, uname, pass,  null,ctype);
		return getSqlSession().selectOne("user.validateLogin", u);
	}


	@Override
	public User queryById(Integer id) {
		return getSqlSession().selectOne("user.queryById", id);
	}


	@Override
	public List<User> queryAll(User u) {
		return getSqlSession().selectList("user.queryAll",u);
	}


	@Override
	public int update(User u) {
		// TODO Auto-generated method stub
		return getSqlSession().update("user.update",u);
	}


	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("user.delete",id);
	}


	@Override
	public List<User> queryAll2(User u) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("user.queryAll2",u);
	}


	@Override
	public int update2(User u) {
		// TODO Auto-generated method stub
		return getSqlSession().update("user.update2",u);
	}


	@Override
	public int delete2(Integer id) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("user.delete2",id);
	}
	
	@Override
	public Power power(Integer id){
		return getSqlSession().selectOne("user.power",id);
		
	}


	@Override
	public List<Power> selectByRoleId(Integer id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("user.RoleId",id);
	}
	
}
