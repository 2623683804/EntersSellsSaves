package com.neusoft.zyx.dao;

import java.util.List;

import com.neusoft.entity.Customer;


public interface CustomerDAOI {
	public abstract List<Customer> queryAll(Customer c);
	public abstract int add(Customer c);
	public abstract Customer queryById(Integer cusno);
	public abstract int update(Customer s);
	public abstract int delete(String cusnos);
}
