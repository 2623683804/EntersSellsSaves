package com.neusoft.zyx.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.Commodity;
import com.neusoft.zyx.service.CommodityServiceI;

@Controller
public class CommodityController {

	@Autowired
	private CommodityServiceI service;
	
	@RequestMapping(value = "/commodity", params = "act=query")
	public String doQueryAll(HttpServletRequest req,Commodity c){
		System.out.println("--c="+c);
		String str = "/commodity/query.jsp"; 
		List<Commodity> list = service.queryAll(c);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/commodity", params = "act=add")
	public String doAdd(HttpServletRequest req,Commodity c){
		System.out.println("--doadd");
		String str = "";
		int i = service.add(c);
		if (i>0) {
			str = "/commodity/querycommodity.jsp";
		} else {
			System.out.println("--add error");
		}
		return str;
	}
	
	@RequestMapping(value = "/commodity", params = "act=toUpdate")
	public String doToUpdate(HttpServletRequest req,Commodity c){
		System.out.println("--doToUpdate");
		String str = "/commodity/update.jsp";
		Commodity c2 = service.queryById(c.getComno());
		req.setAttribute("c", c2);
		return str;
	}
	
	@RequestMapping(value = "/commodity", params = "act=update")
	public String doUpdate(HttpServletRequest req,Commodity c){
		System.out.println("--doupdate");
		String str = "/commodity/update.jsp";
		int i = service.update(c);
		if (i>0) {
			str = "/commodity/querycommodity.jsp";
		} else {
			System.out.println("--update error");
		}
		return str;
	}
	@RequestMapping(value = "/commodity", params = "act=delete")
	public String doDelete(HttpServletRequest req,Commodity c, String comnos){
		System.out.println("--doDelete");
		//String str = "/salesman/query.jsp";
		String str = "/commodity.action?act=query";
		int i = service.delete(comnos);
		if (i>0) {
			System.out.println("delete ok!");
		} else {
			System.out.println("--delete error");
		}
		return str;
	}
	
	
	
	
	@RequestMapping(value = "/commodity", params = "act=query1")
	public String doQueryAll1(HttpServletRequest req,Commodity c){
		System.out.println("--c="+c);
		String str = "/commodity_ckgly/query.jsp"; 
		List<Commodity> list = service.queryAll(c);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/commodity", params = "act=add1")
	public String doAdd1(HttpServletRequest req,Commodity c){
		System.out.println("--doadd");
		String str = "";
		int i = service.add(c);
		if (i>0) {
			str = "/commodity_ckgly/querycommodity.jsp";
		} else {
			System.out.println("--add error");
		}
		return str;
	}
	
	@RequestMapping(value = "/commodity", params = "act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,Commodity c){
		System.out.println("--doToUpdate");
		String str = "/commodity_ckgly/update.jsp";
		Commodity c2 = service.queryById(c.getComno());
		req.setAttribute("c", c2);
		return str;
	}
	
	@RequestMapping(value = "/commodity", params = "act=update1")
	public String doUpdate1(HttpServletRequest req,Commodity c){
		System.out.println("--doupdate");
		String str = "/commodity_ckgly/update.jsp";
		int i = service.update(c);
		if (i>0) {
			str = "/commodity_ckgly/querycommodity.jsp";
		} else {
			System.out.println("--update error");
		}
		return str;
	}
	@RequestMapping(value = "/commodity", params = "act=delete1")
	public String doDelete1(HttpServletRequest req,Commodity c, String comnos){
		System.out.println("--doDelete");
		//String str = "/salesman/query.jsp";
		String str = "/commodity.action?act=query1";
		int i = service.delete(comnos);
		if (i>0) {
			System.out.println("delete ok!");
		} else {
			System.out.println("--delete error");
		}
		return str;
	}
}
