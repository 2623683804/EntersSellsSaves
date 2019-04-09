package com.neusoft.lhs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.neusoft.entity.Page;
import com.neusoft.entity.PurInput;
import com.neusoft.lhs.dao.PurInputDAOI;

@Service
public class PurInputService implements PurInputServiceI{

	@Autowired
	private PurInputDAOI dao;
	
	@Override
	public List<PurInput> queryAll(Page page) {
		return dao.queryAll(page);
	}
	
	@Override
	public Integer searchPuridCount(PurInput puri) {
		// TODO Auto-generated method stub
		return dao.searchPuridCount(puri);
	}
	
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public boolean add(PurInput puri) {
		boolean flag = false;
		int k =dao.add(puri);
		int i =dao.updateC(puri);
		int j =dao.updateG(puri);
		if (i==1&&j==1&&k==1) {
			flag = true;
		}
		return flag;
	}
	@Override
	public int update(PurInput puri) {
		return dao.update(puri);
	}
	@Override
	public int updateC(PurInput puri) {
		return dao.updateC(puri);
	}
	@Override
	public int updateG(PurInput puri) {
		return dao.updateG(puri);
	}
	@Override
	public int updateCX(PurInput puri) {
		return dao.updateCX(puri);
	}
	
	
	
	@Override
	public int delete(Integer purinid) {
		return dao.delete(purinid);
	}
	
	
	@Override
	public PurInput queryById(Integer purinid) {
		
		return dao.queryById(purinid);
	}

	@Override
	public List<PurInput> queryById1(Integer purinid) {
		
		return dao.queryById1(purinid);
	}
	
	@Override
	public List<PurInput> queryAll(PurInput puri) {
		
		return dao.queryAll(puri);
	}
	

}
