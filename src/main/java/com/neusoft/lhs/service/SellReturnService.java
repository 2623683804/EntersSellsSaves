package com.neusoft.lhs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.SellReturn;
import com.neusoft.lhs.dao.SellReturnDAOI;

@Service
public class SellReturnService implements SellReturnServiceI{

	@Autowired
	private SellReturnDAOI dao;
	
	
	@Override
	public int add(SellReturn sellre) {
		// TODO Auto-generated method stub
		return dao.add(sellre);
	}

	@Override
	public List<SellReturn> queryAll(SellReturn sellre) {
		// TODO Auto-generated method stub
		return dao.queryAll(sellre);
	}

	@Override
	public int update(SellReturn sellre) {
		// TODO Auto-generated method stub
		return dao.update(sellre);
	}
	@Override
	public int updateC(SellReturn sellre) {
		// TODO Auto-generated method stub
		return dao.updateC(sellre);
	}
	@Override
	public int updateD(SellReturn sellre) {
		// TODO Auto-generated method stub
		return dao.updateD(sellre);
	}
	@Override
	public SellReturn queryById(Integer sellreid) {
		// TODO Auto-generated method stub
		return dao.queryById(sellreid);
	}

	@Override
	public int delete(Integer sellreid) {
		// TODO Auto-generated method stub
		return dao.delete(sellreid);
	}

}
