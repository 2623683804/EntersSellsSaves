package com.neusoft.zh.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.User;
import com.neusoft.zh.dao.UserDAOI;
@Service
public class UserService implements UserServiceI {
	@Autowired
	private UserDAOI dao;

	@Override
	public User queryByUname(String uname) {
		// TODO Auto-generated method stub
		return dao.queryByUname(uname);
	}
	
	@Override
	public int add(User u){
		return dao.add(u);
	}

	@Override
	public User queryById(Integer id) {
		// TODO Auto-generated method stub
		return dao.queryById(id);
	}

	@Override
	public List<User> queryAll(User u){
		return dao.queryAll(u);
	}
	@Override
	public int update(User u){
		return dao.update(u);
	}
	@Override
	public int delete(Integer id){
		return dao.delete(id);
	}

	@Override
	public List<User> queryAll2(User u) {
		// TODO Auto-generated method stub
		return dao.queryAll2(u);
	}
	
	@Override
	public int update2(User u){
		return dao.update(u);
	}
	@Override
	public int delete2(Integer id){
		return dao.delete(id);
	}


	
}
