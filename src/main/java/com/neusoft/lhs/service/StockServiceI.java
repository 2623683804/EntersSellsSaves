package com.neusoft.lhs.service;

import java.util.List;

import com.neusoft.entity.Commodity;


public interface StockServiceI {

	List<Commodity> queryAll(Commodity c);
}
