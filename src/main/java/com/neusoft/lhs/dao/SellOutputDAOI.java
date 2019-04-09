package com.neusoft.lhs.dao;

import java.util.List;

import com.neusoft.entity.SellOutput;

public interface SellOutputDAOI {
	public abstract int add(SellOutput sell);

	public abstract List<SellOutput> queryAll(SellOutput sell);

	public abstract int update(SellOutput sell);

	public abstract SellOutput queryById(Integer selloutid);

	public abstract int delete(Integer selloutid);

	public abstract int updateK(SellOutput sell);

	public abstract int updateC(SellOutput sell);

	int updateD(SellOutput sell);

}
