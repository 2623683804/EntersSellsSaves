package com.neusoft.zh.dao;

import java.util.List;

import com.neusoft.entity.Power;
import com.neusoft.entity.User;

public interface UserDAOI {
	//���û����Ƿ��ظ�
	public abstract User queryByUname(String uname);
	
	//���Ӽ�¼
	public abstract int add(User u);


	

	public abstract User queryById(Integer id);
    
	//��ѯ���м�¼
	public abstract List<User> queryAll(User u);

	public abstract int update(User u);

	public abstract int delete(Integer id);
	
	
	
	
	public abstract List<User> queryAll2(User u);
	
	public abstract int update2(User u);

	public abstract int delete2(Integer id);

	public abstract Power power(Integer id);
	
	public abstract List<Power> selectByRoleId(Integer id);

	//��֤��¼������ɹ����򷵻ظ�User���󣻷��򷵻� null��
	public abstract User validateLogin(String uname, String pass, String ctype);
}