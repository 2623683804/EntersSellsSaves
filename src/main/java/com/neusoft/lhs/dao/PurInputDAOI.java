package com.neusoft.lhs.dao;

import java.util.List;

import com.neusoft.entity.Page;
import com.neusoft.entity.PurInput;

public interface PurInputDAOI {


	public abstract int add(PurInput puri);

	public abstract List<PurInput> queryAll(PurInput puri);
	public abstract int delete(Integer purinid);

	public abstract int update(PurInput puri);

	public abstract PurInput queryById(Integer purinid);

	public abstract int updateC(PurInput puri);

	public abstract int updateG(PurInput puri);

	public abstract int updateCX(PurInput puri);

	public abstract List<PurInput> queryAll(Page page);

	Integer searchPuridCount(PurInput puri);

	public abstract List<PurInput> queryById1(Integer purinid);

}
