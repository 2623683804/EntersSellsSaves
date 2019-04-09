package com.neusoft.lhs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.SellOutput;
import com.neusoft.lhs.dao.SellOutputDAOI;

@Service
public class SellOutoutService implements SellOutoutServiceI{

	@Autowired
	private SellOutputDAOI dao;
	
	@Override
	public int add(SellOutput sell) {
		// TODO Auto-generated method stub
		return dao.add(sell);
	}

	@Override
	public List<SellOutput> queryAll(SellOutput sell) {
		// TODO Auto-generated method stub
		return dao.queryAll(sell);
	}

	@Override
	public int delete(Integer selloutid) {
		// TODO Auto-generated method stub
		return dao.delete(selloutid);
	}

	@Override
	public int update(SellOutput sell) {
		// TODO Auto-generated method stub
		return dao.update(sell);
	}

	@Override
	public int updateK(SellOutput sell) {
		// TODO Auto-generated method stub
		return dao.updateK(sell);
	}
	@Override
	public int updateC(SellOutput sell) {
		// TODO Auto-generated method stub
		return dao.updateC(sell);
	}
	@Override
	public int updateD(SellOutput sell) {
		// TODO Auto-generated method stub
		return dao.updateD(sell);
	}
	@Override
	public SellOutput queryById(Integer selloutid) {
		// TODO Auto-generated method stub
		return dao.queryById(selloutid);
	}

}
