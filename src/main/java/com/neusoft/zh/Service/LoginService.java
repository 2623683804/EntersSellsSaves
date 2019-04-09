package com.neusoft.zh.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.zh.dao.UserDAOI;
import com.neusoft.entity.User;

@Service
public class LoginService implements LoginServiceI {
	
	@Autowired
	private UserDAOI dao;
	
	@Override
	public User validateLogin(String uname, String pass,String ctype){
		return dao.validateLogin(uname, pass,ctype);
	}

	
}
