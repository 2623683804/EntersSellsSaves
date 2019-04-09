package com.neusoft.zyx.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.Supplier;
import com.neusoft.zyx.service.SupplierServiceI;



@Controller
public class SupplierController {

	@Autowired
	private SupplierServiceI service;
	
	@RequestMapping(value = "/supplier", params = "act=query")
	public String doQueryAll(HttpServletRequest req,Supplier s){
		System.out.println("--s="+s);
		String str = "/supplier/query.jsp"; 
		List<Supplier> list = service.queryAll(s);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/supplier", params = "act=add")
	public String doAdd(HttpServletRequest req,Supplier s){
		System.out.println("--doadd");
		String str = "";
		int i = service.add(s);
		if (i>0) {
			str = "/supplier/querysupplier.jsp";
		} else {
			System.out.println("--add error");
		}
		return str;
	}
	
	@RequestMapping(value = "/supplier", params = "act=toUpdate")
	public String doToUpdate(HttpServletRequest req,Supplier s){
		System.out.println("--doToUpdate");
		String str = "/supplier/update.jsp";
		Supplier s2 = service.queryById(s.getSupno());
		req.setAttribute("s", s2);
		return str;
	}
	
	@RequestMapping(value = "/supplier", params = "act=update")
	public String doUpdate(HttpServletRequest req,Supplier s){
		System.out.println("--doupdate");
		System.out.println("--s="+s);
		String str = "/supplier/update.jsp";
		int i = service.update(s);
		if (i>0) {
			str = "/supplier/querysupplier.jsp";
		} else {
			System.out.println("--update error");
		}
		return str;
	}
	@RequestMapping(value = "/supplier", params = "act=delete")
	public String doDelete(HttpServletRequest req,Supplier s, String supnos){
		System.out.println("--doDelete");
		//String str = "/salesman/query.jsp";
		String str = "/supplier.action?act=query";
		int i = service.delete(supnos);
		if (i>0) {
			System.out.println("delete ok!");
		} else {
			System.out.println("--delete error");
		}
		return str;
	}
	
	
	@RequestMapping(value = "/supplier", params = "act=query1")
	public String doQueryAll1(HttpServletRequest req,Supplier s){
		System.out.println("--s="+s);
		String str = "/supplier_ckgly/query.jsp"; 
		List<Supplier> list = service.queryAll(s);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/supplier", params = "act=add1")
	public String doAdd1(HttpServletRequest req,Supplier s){
		System.out.println("--doadd");
		String str = "";
		int i = service.add(s);
		if (i>0) {
			str = "/supplier_ckgly/querysupplier.jsp";
		} else {
			System.out.println("--add error");
		}
		return str;
	}
	
	@RequestMapping(value = "/supplier", params = "act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,Supplier s){
		System.out.println("--doToUpdate");
		String str = "/supplier_ckgly/update.jsp";
		Supplier s2 = service.queryById(s.getSupno());
		req.setAttribute("s", s2);
		return str;
	}
	
	@RequestMapping(value = "/supplier", params = "act=update1")
	public String doUpdate1(HttpServletRequest req,Supplier s){
		System.out.println("--doupdate");
		System.out.println("--s="+s);
		String str = "/supplier_ckgly/update.jsp";
		int i = service.update(s);
		if (i>0) {
			str = "/supplier_ckgly/querysupplier.jsp";
		} else {
			System.out.println("--update error");
		}
		return str;
	}
	@RequestMapping(value = "/supplier", params = "act=delete1")
	public String doDelete1(HttpServletRequest req,Supplier s, String supnos){
		System.out.println("--doDelete");
		//String str = "/salesman/query.jsp";
		String str = "/supplier.action?act=query1";
		int i = service.delete(supnos);
		if (i>0) {
			System.out.println("delete ok!");
		} else {
			System.out.println("--delete error");
		}
		return str;
	}
}
