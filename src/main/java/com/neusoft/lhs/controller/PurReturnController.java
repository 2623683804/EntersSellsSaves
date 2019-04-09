package com.neusoft.lhs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.PurReturn;
import com.neusoft.lhs.service.PurReturnService;

@Controller
public class PurReturnController {
	@Autowired
	private PurReturnService service;
	
	@RequestMapping(value = "/puroutput", params = "act=query")//查全部表单，或以单号搜索记录
	public String doQuery(HttpServletRequest req,PurReturn purr){
		String str = "/purchase/purchase_sales_return.jsp";
		List<PurReturn> list = service.queryAll(purr);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/puroutput", params = "act=puroutputadd")
	public String doAdd(HttpServletRequest req,PurReturn purr){
		String str = "/purchase/pur_return_query.jsp";
		int i = service.add(purr);
		service.updateC(purr);
		
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("purr", purr);
		}
		return str;
	}
	
	@RequestMapping(value="/puroutput", params="act=update")
	public String doUpdate(HttpServletRequest req,PurReturn purr){
		String str = "/purchase/pur_return_set.jsp";
		System.out.println("--update--");
		PurReturn p = service.queryById(purr.getPuroutid());
		System.out.println("--update--");
		req.setAttribute("purr", p);
		return str;

	}
	
	@RequestMapping(value="/puroutput", params="act=toUpdate")
	public String doToUpdate(HttpServletRequest req,PurReturn purr){
		String str = "/purchase/pur_return_query.jsp";
		int i = service.update(purr);
		
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("purr", purr);
		}
		return str;
		
	}
	@RequestMapping(value="/puroutput", params="act=delete")
	public String doDelect(HttpServletRequest req,PurReturn purr){
		String str = "/purchase/pur_return_query.jsp";
		int i = service.delete(purr.getPuroutid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}

		return str;
		
	}
	@RequestMapping(value = "/puroutput", params = "act=query1")//查全部表单，或以单号搜索记录
	public String doQuery1(HttpServletRequest req,PurReturn purr){
		String str = "/purchase_xsy/purchase_sales_return.jsp";
		List<PurReturn> list = service.queryAll(purr);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/puroutput", params = "act=puroutputadd1")
	public String doAdd1(HttpServletRequest req,PurReturn purr){
		String str = "/purchase_xsy/purchase_return_query.jsp";
		int i = service.add(purr);
		service.updateC(purr);
		
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("purr", purr);
		}
		return str;
	}
	
	@RequestMapping(value="/puroutput", params="act=update1")
	public String doUpdate1(HttpServletRequest req,PurReturn purr){
		String str = "/purchase_xsy/pur_return_set.jsp";
		System.out.println("--update--");
		PurReturn p = service.queryById(purr.getPuroutid());
		System.out.println("--update--");
		req.setAttribute("purr", p);
		return str;

	}
	
	@RequestMapping(value="/puroutput", params="act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,PurReturn purr){
		String str = "/purchase_xsy/purchase_return_query.jsp";
		int i = service.update(purr);
		
		if (i > 0) {
			req.setAttribute("msg", "add ok");
		}else{
			req.setAttribute("msg", "add error");
			req.setAttribute("purr", purr);
		}
		return str;
		
	}
	@RequestMapping(value="/puroutput", params="act=delete1")
	public String doDelect1(HttpServletRequest req,PurReturn purr){
		String str = "/purchase_xsy/purchase_return_query.jsp";
		int i = service.delete(purr.getPuroutid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}

		return str;
		
	}
}
