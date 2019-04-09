package com.neusoft.lhs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.Commodity;
import com.neusoft.lhs.service.StockServiceI;

@Controller
public class StockController {

	@Autowired
	private StockServiceI service;
	
	@RequestMapping(value = "/stock", params = "act=queryById")
	public String queryALL(HttpServletRequest req,Commodity sto){
		String str = "/stock_inquiry/stock_inquiry.jsp";
		
		List<Commodity> list = service.queryAll(sto);
		req.setAttribute("list", list);
		return str;
	}
	@RequestMapping(value = "/stock", params = "act=queryById1")
	public String queryALL1(HttpServletRequest req,Commodity sto){
		String str = "/stock_inquiry_xsy/stock_inquiry.jsp";
		
		List<Commodity> list = service.queryAll(sto);
		req.setAttribute("list", list);
		return str;
	}
	
}
