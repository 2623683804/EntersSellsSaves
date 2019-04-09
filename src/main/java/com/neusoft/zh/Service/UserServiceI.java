package com.neusoft.zh.Service;

import java.util.List;

import com.neusoft.entity.User;

public interface UserServiceI {
	public abstract User queryByUname(String uname);
	
	public abstract int add(User u);

	public abstract User queryById(Integer id);

	public abstract List<User> queryAll(User u);

	public abstract int update(User u);

	public abstract int delete(Integer id);
	
	
	public abstract List<User> queryAll2(User u);
	
	public abstract int update2(User u);

	public abstract int delete2(Integer id);
	
	
}