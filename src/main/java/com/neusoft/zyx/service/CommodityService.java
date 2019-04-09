package com.neusoft.zyx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.Commodity;
import com.neusoft.zyx.dao.CommodityDAOI;


@Service
public class CommodityService implements CommodityServiceI {

	@Autowired
	private CommodityDAOI dao;
	
	@Override
	public List<Commodity> queryAll(Commodity c) {
		return dao.queryAll(c);
	}

	@Override
	public int add(Commodity c) {
		return dao.add(c);
	}

	@Override
	public Commodity queryById(Integer comno) {
		return dao.queryById(comno);
	}

	@Override
	public int update(Commodity c) {
		return dao.update(c);
	}

	@Override
	public int delete(String comnos) {
		return dao.delete(comnos);
	}

}
