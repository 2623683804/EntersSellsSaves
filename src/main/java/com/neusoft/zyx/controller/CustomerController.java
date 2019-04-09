package com.neusoft.zyx.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.Customer;
import com.neusoft.zyx.service.CustomerServiceI;


@Controller
public class CustomerController {

	@Autowired
	private CustomerServiceI service;
	
	@RequestMapping(value = "/customer", params = "act=query")
	public String doQueryAll(HttpServletRequest req,Customer c){
		System.out.println("--ccc="+c);
		String str = "/customer/query.jsp"; 
		List<Customer> list = service.queryAll(c);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/customer", params = "act=add")
	public String doAdd(HttpServletRequest req,Customer c){
		System.out.println("--doadd");
		String str = "";
		int i = service.add(c);
		if (i>0) {
			str = "/customer/querycustomer.jsp";
		} else {
			System.out.println("--add error");
		}
		return str;
	}
	
	@RequestMapping(value = "/customer", params = "act=toUpdate")
	public String doToUpdate(HttpServletRequest req,Customer c){
		System.out.println("--doToUpdate");
		String str = "/customer/update.jsp";
		Customer c2 = service.queryById(c.getCusno());
		req.setAttribute("c", c2);
		return str;
	}
	
	@RequestMapping(value = "/customer", params = "act=update")
	public String doUpdate(HttpServletRequest req,Customer c){
		System.out.println("--doupdate");
		System.out.println("--c="+c);
		String str = "/customer/update.jsp";
		int i = service.update(c);
		if (i>0) {
			str = "/customer/querycustomer.jsp";
		} else {
			System.out.println("--update error");
		}
		return str;
	}
	@RequestMapping(value = "/customer", params = "act=delete")
	public String doDelete(HttpServletRequest req ,Customer s, String cusnos){
		System.out.println("--doDelete");
		//String str = "/salesman/query.jsp";
		String str = "/customer.action?act=query";
		int i = service.delete(cusnos);
		if (i>0) {
			System.out.println("delete ok!");
		} else {
			System.out.println("--delete error");
		}
		return str;
	}
	
	
	
	
	
	@RequestMapping(value = "/customer", params = "act=query1")
	public String doQueryAll1(HttpServletRequest req,Customer c){
		System.out.println("--ccc="+c);
		String str = "/customer_ckgly/query.jsp"; 
		List<Customer> list = service.queryAll(c);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/customer", params = "act=add1")
	public String doAdd1(HttpServletRequest req,Customer c){
		System.out.println("--doadd");
		String str = "";
		int i = service.add(c);
		if (i>0) {
			str = "/customer_ckgly/querycustomer.jsp";
		} else {
			System.out.println("--add error");
		}
		return str;
	}
	
	@RequestMapping(value = "/customer", params = "act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,Customer c){
		System.out.println("--doToUpdate");
		String str = "/customer_ckgly/update.jsp";
		Customer c2 = service.queryById(c.getCusno());
		req.setAttribute("c", c2);
		return str;
	}
	
	@RequestMapping(value = "/customer", params = "act=update1")
	public String doUpdate1(HttpServletRequest req,Customer c){
		System.out.println("--doupdate");
		System.out.println("--c="+c);
		String str = "/customer_ckgly/update.jsp";
		int i = service.update(c);
		if (i>0) {
			str = "/customer_ckgly/querycustomer.jsp";
		} else {
			System.out.println("--update error");
		}
		return str;
	}
	@RequestMapping(value = "/customer", params = "act=delete1")
	public String doDelete1(HttpServletRequest req ,Customer s, String cusnos){
		System.out.println("--doDelete");
		//String str = "/salesman/query.jsp";
		String str = "/customer.action?act=query1";
		int i = service.delete(cusnos);
		if (i>0) {
			System.out.println("delete ok!");
		} else {
			System.out.println("--delete error");
		}
		return str;
	}
}
