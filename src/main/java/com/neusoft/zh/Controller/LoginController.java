package com.neusoft.zh.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.entity.User;
import com.neusoft.zh.Service.LoginServiceI;


@Controller
public class LoginController {
	
	@Autowired
	private LoginServiceI service;

	@RequestMapping("/login")
	public String login(HttpServletRequest req, User u){
		String str = "/login.jsp";
		
		User u2 = service.validateLogin(u.getUname(), u.getPass(),u.getCtype());
		if(u2!=null&&"管理员".equals(u2.getCtype())){
			
			str = "/zhuye_gly.jsp"; 
			req.getSession().setAttribute("GLOBAL_USER", u2); 			
		}else if(u2!=null&&"仓库管理员".equals(u2.getCtype())){
			
			str = "/zhuye_ckgly.jsp"; 
			req.getSession().setAttribute("GLOBAL_USER", u2); 			
		}else if(u2!=null&&"销售员".equals(u2.getCtype())){
			
			str = "/zhuye_xsy.jsp"; 
			req.getSession().setAttribute("GLOBAL_USER", u2); 			
		}else {
			
			req.setAttribute("msg", "用户名或密码错误");
		}
		
		return str;
	}

	
}
