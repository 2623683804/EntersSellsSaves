package com.neusoft.lhs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.SellOutput;
import com.neusoft.lhs.service.SellOutoutServiceI;

@Controller
public class SellOuputController {

	@Autowired
	private SellOutoutServiceI service;
	
	@RequestMapping(value = "/sell", params = "act=query")//查全部表单，或以单号搜索记录
	public String doQuery(HttpServletRequest req,SellOutput sell){
		String str = "/sell/sell_sales_output.jsp";
		List<SellOutput> list = service.queryAll(sell);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/sell", params = "act=selladd")
	public String doAdd(HttpServletRequest req,SellOutput sell){
		String str = "/sell/sell_output_query.jsp";
		int i = service.add(sell);
		service.updateK(sell);
		service.updateC(sell);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sell", sell);
		}
		return str;
	}
	
	@RequestMapping(value="/sell", params="act=update")
	public String doUpdate(HttpServletRequest req,SellOutput sell){
		String str = "/sell/sell_out_set.jsp";
		SellOutput p = service.queryById(sell.getSelloutid());
		req.setAttribute("sell", p);
		return str;

	}
	
	@RequestMapping(value="/sell", params="act=toUpdate")
	public String doToUpdate(HttpServletRequest req,SellOutput sell){
		String str = "/sell/sell_output_query.jsp";
		int i = service.update(sell);
		service.updateD(sell);
		service.updateK(sell);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sell", sell);
		}
		return str;
		
	}
	@RequestMapping(value="/sell", params="act=delete")
	public String doDelect(HttpServletRequest req,SellOutput sell){
		String str = "/sell/sell_output_query.jsp";
		int i = service.delete(sell.getSelloutid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}

		return str;
		
	}
	
	@RequestMapping(value = "/sell", params = "act=query1")//查全部表单，或以单号搜索记录
	public String doQuery1(HttpServletRequest req,SellOutput sell){
		String str = "/sell_xsy/sell_sales_output.jsp";
		List<SellOutput> list = service.queryAll(sell);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/sell", params = "act=selladd1")
	public String doAdd1(HttpServletRequest req,SellOutput sell){
		String str = "/sell_xsy/sell_output_query.jsp";
		int i = service.add(sell);
		service.updateK(sell);
		service.updateC(sell);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sell", sell);
		}
		return str;
	}
	
	@RequestMapping(value="/sell", params="act=update1")
	public String doUpdate1(HttpServletRequest req,SellOutput sell){
		String str = "/sell_xsy/sell_out_set.jsp";
		SellOutput p = service.queryById(sell.getSelloutid());
		req.setAttribute("sell", p);
		return str;

	}
	
	@RequestMapping(value="/sell", params="act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,SellOutput sell){
		String str = "/sell_xsy/sell_output_query.jsp";
		int i = service.update(sell);
		service.updateD(sell);
		service.updateK(sell);
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("sell", sell);
		}
		return str;
		
	}
	@RequestMapping(value="/sell", params="act=delete1")
	public String doDelect1(HttpServletRequest req,SellOutput sell){
		String str = "/sell_xsy/sell_output_query.jsp";
		int i = service.delete(sell.getSelloutid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}

		return str;
		
	}
}
