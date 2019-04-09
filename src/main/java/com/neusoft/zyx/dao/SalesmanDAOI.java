package com.neusoft.zyx.dao;

import java.util.List;

import com.neusoft.entity.Salesman;

public interface SalesmanDAOI {
	public abstract List<Salesman> queryAll(Salesman s);
	public abstract int add(Salesman s);
	public abstract Salesman queryById(Integer salesno);
	public abstract int update(Salesman s);
	public abstract int delete(String salesnos);
}
