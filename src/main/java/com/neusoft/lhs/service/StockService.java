package com.neusoft.lhs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.entity.Commodity;
import com.neusoft.lhs.dao.StockDAOI;

@Service
public class StockService implements StockServiceI{
	@Autowired
	private StockDAOI dao;
	
	@Override
	public List<Commodity> queryAll(Commodity c) {
		return dao.queryAll(c);
	}

}
