package com.neusoft.zyx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.Customer;
import com.neusoft.zyx.dao.CustomerDAOI;


@Service
public class CustomerService implements CustomerServiceI {

	@Autowired
	private CustomerDAOI dao;
	
	@Override
	public List<Customer> queryAll(Customer c) {
		return dao.queryAll(c);
	}

	@Override
	public int add(Customer c) {
		return dao.add(c);
	}

	@Override
	public Customer queryById(Integer cusno) {
		return dao.queryById(cusno);
	}

	@Override
	public int update(Customer c) {
		return dao.update(c);
	}

	@Override
	public int delete(String cusnos) {
		return dao.delete(cusnos);
	}

}
