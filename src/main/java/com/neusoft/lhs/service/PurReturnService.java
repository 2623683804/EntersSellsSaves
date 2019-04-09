package com.neusoft.lhs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.PurReturn;
import com.neusoft.lhs.dao.PurReturnDAOI;

@Service
public class PurReturnService implements PurReturnServiceI{

	@Autowired
	private PurReturnDAOI dao;
	
	@Override
	public int add(PurReturn purr) {
		return dao.add(purr);
	}

	@Override
	public List<PurReturn> queryAll(PurReturn purr) {
		return dao.queryAll(purr);
	}

	@Override
	public int delete(Integer puroutid) {
		return dao.delete(puroutid);
	}

	@Override
	public int update(PurReturn purr) {
		return dao.update(purr);
	}

	@Override
	public PurReturn queryById(Integer puroutid) {
		return dao.queryById(puroutid);
	}

	@Override
	public int updateC(PurReturn purr) {
		// TODO Auto-generated method stub
		return dao.updateC(purr);
	}


}
