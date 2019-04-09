package com.neusoft.lhs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.SellReturn;
import com.neusoft.lhs.service.SellReturnServiceI;

@Controller
public class SellReturnController {

	@Autowired
	private SellReturnServiceI service;
	
	@RequestMapping(value = "/sellre", params = "act=query")//查全部表单，或以单号搜索记录
	public String doQuery(HttpServletRequest req,SellReturn sellre){
		String str = "/sell/sell_sales_return.jsp";
		List<SellReturn> list = service.queryAll(sellre);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/sellre", params = "act=selladd")
	public String doAdd(HttpServletRequest req,SellReturn sellre){
		String str = "/sell/sell_return_query.jsp";
		int i = service.add(sellre);
		service.updateC(sellre);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sellre", sellre);
		}
		return str;
	}
	
	@RequestMapping(value="/sellre", params="act=update")
	public String doUpdate(HttpServletRequest req,SellReturn sellre){
		String str = "/sell/sell_return_set.jsp";
		SellReturn p = service.queryById(sellre.getSellreid());
		req.setAttribute("sellre", p);
		return str;

	}
	
	@RequestMapping(value="/sellre", params="act=toUpdate")
	public String doToUpdate(HttpServletRequest req,SellReturn sellre){
		String str = "/sell/sell_return_query.jsp";
		int i = service.update(sellre);
		service.updateD(sellre);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sell", sellre);
		}
		return str;
		
	}
	@RequestMapping(value="/sellre", params="act=delete")
	public String doDelect(HttpServletRequest req,SellReturn sellre){
		String str = "/sell/sell_return_query.jsp";
		int i = service.delete(sellre.getSellreid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}

		return str;
		
	}
	
	@RequestMapping(value = "/sellre", params = "act=query1")//查全部表单，或以单号搜索记录
	public String doQuery1(HttpServletRequest req,SellReturn sellre){
		String str = "/sell_xsy/sell_sales_return.jsp";
		List<SellReturn> list = service.queryAll(sellre);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/sellre", params = "act=selladd1")
	public String doAdd1(HttpServletRequest req,SellReturn sellre){
		String str = "/sell_xsy/sell_return_query.jsp";
		int i = service.add(sellre);
		service.updateC(sellre);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sellre", sellre);
		}
		return str;
	}
	
	@RequestMapping(value="/sellre", params="act=update1")
	public String doUpdate1(HttpServletRequest req,SellReturn sellre){
		String str = "/sell_xsy/sell_return_set.jsp";
		SellReturn p = service.queryById(sellre.getSellreid());
		req.setAttribute("sellre", p);
		return str;

	}
	
	@RequestMapping(value="/sellre", params="act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,SellReturn sellre){
		String str = "/sell_xsy/sell_return_query.jsp";
		int i = service.update(sellre);
		service.updateD(sellre);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sell", sellre);
		}
		return str;
		
	}
	@RequestMapping(value="/sellre", params="act=delete1")
	public String doDelect1(HttpServletRequest req,SellReturn sellre){
		String str = "/sell_xsy/sell_return_query.jsp";
		int i = service.delete(sellre.getSellreid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}

		return str;
		
	}
}
