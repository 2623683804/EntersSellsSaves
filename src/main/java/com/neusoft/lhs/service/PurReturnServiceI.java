package com.neusoft.lhs.service;

import java.util.List;

import com.neusoft.entity.PurReturn;

public interface PurReturnServiceI {
	
	public abstract int add(PurReturn purr);

	public abstract List<PurReturn> queryAll(PurReturn purr);

	public abstract int update(PurReturn purr);
	public abstract int updateC(PurReturn purr);
	
	public abstract PurReturn queryById(Integer puroutid);

	public abstract int delete(Integer puroutid);

}
