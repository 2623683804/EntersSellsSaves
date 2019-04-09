package com.neusoft.zyx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.Supplier;
import com.neusoft.zyx.dao.SupplierDAOI;


@Service
public class SupplierService implements SupplierServiceI {

	@Autowired
	private SupplierDAOI dao;
	
	@Override
	public List<Supplier> queryAll(Supplier s) {
		return dao.queryAll(s);
	}

	@Override
	public int add(Supplier s) {
		return dao.add(s);
	}

	@Override
	public Supplier queryById(Integer supno) {
		return dao.queryById(supno);
	}

	@Override
	public int update(Supplier s) {
		return dao.update(s);
	}

	@Override
	public int delete(String supnos) {
		return dao.delete(supnos);
	}

}
