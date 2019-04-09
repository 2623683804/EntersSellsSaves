package com.neusoft.zyx.service;

import java.util.List;

import com.neusoft.entity.Commodity;


public interface CommodityServiceI {
	public abstract List<Commodity> queryAll(Commodity c);
	public abstract int add(Commodity c);
	public abstract Commodity queryById(Integer comno);
	public abstract int update(Commodity c);
	public abstract int delete(String comnos);
}