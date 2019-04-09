package com.neusoft.lhs.dao;

import java.util.List;

import com.neusoft.entity.Commodity;

public interface StockDAOI {

	List<Commodity> queryAll(Commodity c);
}
