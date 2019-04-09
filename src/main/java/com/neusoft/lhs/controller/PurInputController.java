package com.neusoft.lhs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.Page;
import com.neusoft.entity.PurInput;
import com.neusoft.lhs.service.PurInputServiceI;


@Controller
public class PurInputController {

	@Autowired
	private PurInputServiceI service;// 注入PurInputService
	
	@RequestMapping(value = "/purinput", params = "act=query")
	public String doQuery(HttpServletRequest req, PurInput puri) {// 进入到此页面的初始化he
																	// 跳转首页
		String str = "/purchase/purchase_sales_input.jsp";

		Page p = new Page();// 创建一个表格信息对象
		p.setPagesize(4);// 设置每页大小为4（每页有4条记录）
		p.setStartrow(0);// 设置开始查询的条数
		p.setCurrentpage(1);// 设置当前页
		int i = service.searchPuridCount(puri);// 查询总条数
		p.setTotalrows(i);// 设置总条数
		int totalpage = (i % 4 == 0) ? (i / 4) : (i / 4 + 1);// 查询 总页数=总条数/页大小+1

		p.setTotalpage(totalpage);// 设置总页数

		List<PurInput> list = service.queryAll(p);// 获取整个表的记录

		req.setAttribute("list", list);
		req.setAttribute("page", p);

		return str;

	}

	@RequestMapping(value = "/purinput", params = "act=queryEnd")
	public String doQueryEnd(HttpServletRequest req, PurInput puri) {// 跳转尾页
		String str = "/purchase/purchase_sales_input.jsp";
		// 进入到此页面的初始化
		Page p = new Page();// 创建一个表格信息对象
		p.setPagesize(4);// 设置每页大小为4（每页有4条记录）

		int i = service.searchPuridCount(puri);// 查询总条数
		p.setTotalrows(i);// 设置总条数

		int totalpage = (i % 4 == 0) ? (i / 4) : (i / 4 + 1);// 查询 总页数=总条数/页大小+1

		p.setStartrow((totalpage - 1) * 4);// 设置开始查询的条数

		p.setCurrentpage(totalpage);// 设置当前页
		p.setTotalpage(totalpage);// 设置总页数

		List<PurInput> list = service.queryAll(p);// 获取整个表的记录

		req.setAttribute("list", list);
		req.setAttribute("page", p);

		return str;

	}

	@RequestMapping(value = "/purinput", params = "act=queryNext")
	public String doQueryNext(HttpServletRequest req, PurInput puri, Page page) {// 跳转上/下一页
		String str = "/purchase/purchase_sales_input.jsp";
		page.getCurrentpage();	
		// 进入到此页面的初始化
		Page p = page;// 创建一个表格信息对象    问题Page p = new Page();时前台不显示总条数、总页数
		int i = service.searchPuridCount(puri);// 查询总条数
		int totalpage = (i % 4 == 0) ? (i / 4) : (i / 4 + 1);// 查询 总页数=总条数/页大小+1
		System.out.println(totalpage);
		System.out.println("no");
		p.setPagesize(4);// 设置每页大小为4（每页有4条记录）
		p.setTotalrows(i);// 设置总条数*
		p.setStartrow((page.getCurrentpage() - 1) * 4);// 设置开始查询的条数
		p.setCurrentpage(page.getCurrentpage());// 设置当前页*
		p.setTotalpage(totalpage);// 设置总页数*
		List<PurInput> list = service.queryAll(p);// 获取整个表的记录

		req.setAttribute("list", list);
		req.setAttribute("page", p);

		return str;

	}

	@RequestMapping(value = "/purinput", params = "act=queryJump")
	public String doQueryJump(HttpServletRequest req, PurInput puri, Page page) {// 跳转其它页
		String str = "/purchase/purchase_sales_input.jsp";
		int jumppage = page.getJumppage();// 从前台获取将跳转的页

		// 进入到此页面的初始化
		Page p = page;// 创建一个表格信息对象
		p.setPagesize(4);// 设置每页大小为4（每页有4条记录）

		int i = service.searchPuridCount(puri);// 查询总条数
		p.setTotalrows(i);// 设置总条数*

		int totalpage = (i % 4 == 0) ? (i / 4) : (i / 4 + 1);// 查询 总页数=总条数/页大小+1

		p.setTotalpage(totalpage);// 设置总页数*

		p.setStartrow((jumppage - 1) * 4);// 设置开始查询的条数

		p.setCurrentpage(jumppage);// 将从前台获取将跳转的页设置成当前页*

		List<PurInput> list = service.queryAll(p);// 获取整个表的记录

		req.setAttribute("list", list);
		req.setAttribute("page", p);

		return str;

	}
	
	@RequestMapping(value = "/purinput", params = "act=query2")//查全部表单，或以单号搜索记录
	public String doQuery2(HttpServletRequest req,PurInput puri){
		String str = "/purchase/purchase_sales_input.jsp";
		List<PurInput> list = service.queryAll(puri);
		req.setAttribute("list", list);
		return str;
	}
	
	
	@RequestMapping(value = "/purinput", params = "act=purinputadd")
	public String doAdd(HttpServletRequest req,PurInput puri){
		String str = "/purchase/pur_input_query.jsp";
		service.add(puri);
		
		
		return str;
	}
	
	@RequestMapping(value="/purinput", params="act=update")
	public String doUpdate(HttpServletRequest req,PurInput puri){
		String str = "/purchase/pur_input_set.jsp";
		PurInput p = service.queryById(puri.getPurinid());
		req.setAttribute("puri", p);
		return str;

	}
	
	@RequestMapping(value="/purinput", params="act=toUpdate")
	public String doToUpdate(HttpServletRequest req,PurInput puri){
		String str = "/purchase/pur_input_query.jsp";
		int i = service.update(puri);
		service.updateG(puri);
		service.updateCX(puri);
		if (i > 0) {
			req.setAttribute("msg", "修改成功");
		}else{
			req.setAttribute("msg", "修改失败");
			req.setAttribute("puri", puri);
		}
		return str;
		
	}
	@RequestMapping(value="/purinput", params="act=delete")
	public String doDelect(HttpServletRequest req,PurInput puri){
		String str = "/purchase/pur_input_query.jsp";
		int i = service.delete(puri.getPurinid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}
		return str;
		
	}
	
	@RequestMapping(value = "/purinput", params = "act=query1")//查全部表单，或以单号搜索记录
	public String doQuery1(HttpServletRequest req,PurInput puri){
		String str = "/purchase_xsy/purchase_sales_input.jsp";
		List<PurInput> list = service.queryAll(puri);
		req.setAttribute("list", list);
		return str;
	}
	
	@RequestMapping(value = "/purinput", params = "act=purinputadd1")
	public String doAdd1(HttpServletRequest req,PurInput puri){
		String str = "/purchase_xsy/purchase_input_query.jsp";
		boolean i = service.add(puri);
		if (i = true) {
			req.setAttribute("msg", "增加成功");
		}else{
			req.setAttribute("msg", "增加失败");
			req.setAttribute("puri", puri);
		}
		return str;
	}
	
	@RequestMapping(value="/purinput", params="act=update1")
	public String doUpdate1(HttpServletRequest req,PurInput puri){
		String str = "/purchase_xsy/pur_input_set.jsp";
		PurInput p = service.queryById(puri.getPurinid());
		req.setAttribute("puri", p);
		return str;

	}
	
	@RequestMapping(value="/purinput", params="act=toUpdate1")
	public String doToUpdate1(HttpServletRequest req,PurInput puri){
		String str = "/purchase_xsy/purchase_input_query.jsp";
		int i = service.update(puri);
		service.updateG(puri);
		service.updateCX(puri);
		if (i > 0) {
			req.setAttribute("msg", "修改成功");
		}else{
			req.setAttribute("msg", "修改失败");
			req.setAttribute("puri", puri);
		}
		return str;
		
	}
	@RequestMapping(value="/purinput", params="act=delete1")
	public String doDelect1(HttpServletRequest req,PurInput puri){
		String str = "/purchase_xsy/purchase_input_query.jsp";
		int i = service.delete(puri.getPurinid());
		if (i > 0) {
			req.setAttribute("msg", "删除成功");
		} else {
			req.setAttribute("msg", "删除失败");
		}
		return str;
		
	}
}
