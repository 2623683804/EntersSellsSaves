package com.neusoft.zh.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.User;
import com.neusoft.zh.Service.UserServiceI;

@Controller
public class UserController {

	@Autowired
	private UserServiceI service;

	@RequestMapping(value = "user", params = "act=zhuce")
	public String doAdd(HttpServletRequest req, User u) {
		String str = "/zhuce.jsp";

		int i = service.add(u);
		if (i > 0) {

			str = "/login.jsp";
		} else {

			req.setAttribute("u", u);
		}
		return str;

	}

	@RequestMapping(value = "/user", params = "act=queryByUname")
	public void doCheck(User u, HttpServletResponse resp) throws IOException {

		User u2 = service.queryByUname(u.getUname());

		PrintWriter out = resp.getWriter();
		if (u2 != null) {
			out.print("true");
		} else {
			out.print("false");
		}
		out.close();
	}


	@RequestMapping(value = "/user", params = "act=toUpdate")
	public String doToUpdate(HttpServletRequest req, User u) {
		String str = "/user/update2.jsp";

		User u2 = service.queryById(u.getId());
		req.setAttribute("u", u2);

		return str;
	}
	@RequestMapping(value = "/user", params = "act=update")
	public String doUpdate(HttpServletRequest req, User u) {
		String str = "/user/update.jsp";

		int i = service.update(u);
		if (i > 0) {
		
			req.setAttribute("us", "修改成功");
		} else {
			req.setAttribute("us", "修改失败");
		}
		return str;
	}
	@RequestMapping(value = "/user", params = "act=update1")
	public String doUpdate1(HttpServletRequest req, User u) {
		String str = "/user/power_Query.jsp";

		int i = service.update(u);
		if (i > 0) {
		
			req.setAttribute("u", "修改成功");
		} else {
			str="/user/update2.jsp";
			req.setAttribute("u", u);
		}
		return str;
	}

	
	
	@RequestMapping(value = "/user", params ="act=query2")
	public String doQuery2(HttpServletRequest req, User u) {
		String str = "/user/powerQuery.jsp";
		List<User> list = service.queryAll2(u);
		req.setAttribute("list", list);

		return str;
	}
	@RequestMapping(value = "/user", params = "act=toUpdate2")
	public String doToUpdate2(HttpServletRequest req, User u) {
		String str = "/user/update2.jsp";

		User u2 = service.queryById(u.getId());
		req.setAttribute("u", u2);

		return str;
	}
	@RequestMapping(value = "/user", params = "act=update2")
	public String doUpdate2(HttpServletRequest req, User u) {
		String str = "/user/update2.jsp";

		int i = service.update(u);
		if (i > 0) {
		
			str = "/user/power_Query.jsp";
		} else {
			req.setAttribute("u", u);
		}
		return str;
	}
	@RequestMapping(value = "/user", params = "act=delete2")
	public String doDelete2(HttpServletRequest req, User u) {
		String str = "/user/power_Query.jsp";

		int i = service.delete(u.getId());
		if (i > 0) {
			req.setAttribute("msg", "delete ok");
		} else {
			req.setAttribute("msg", "delete error");
		}
		return str;
	}
}
