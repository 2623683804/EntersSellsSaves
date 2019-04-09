package com.neusoft.zyx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.Salesman;
import com.neusoft.zyx.dao.SalesmanDAOI;

@Service
public class SalesmanService implements SalesmanServiceI {

	@Autowired
	private SalesmanDAOI dao;
	
	@Override
	public List<Salesman> queryAll(Salesman s) {
		return dao.queryAll(s);
	}

	@Override
	public int add(Salesman s) {
		return dao.add(s);
	}

	@Override
	public Salesman queryById(Integer salesno) {
		return dao.queryById(salesno);
	}

	@Override
	public int update(Salesman s) {
		return dao.update(s);
	}

	@Override
	public int delete(String salesnos) {
		return dao.delete(salesnos);
	}

}
