package com.neusoft.zh.Service;

import com.neusoft.entity.User;

public interface LoginServiceI {


	public abstract User validateLogin(String uname, String pass, String ctype);

}