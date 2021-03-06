package com.neusoft.lhs.dao;

import java.util.List;

import com.neusoft.entity.SellReturn;

public interface SellReturnDAOI {
	public abstract int add(SellReturn sellre);

	public abstract List<SellReturn> queryAll(SellReturn sellre);

	public abstract int update(SellReturn sellre);

	public abstract SellReturn queryById(Integer sellreid);

	public abstract int delete(Integer sellreid);

	int updateC(SellReturn sellre);

	int updateD(SellReturn sellre);

}
