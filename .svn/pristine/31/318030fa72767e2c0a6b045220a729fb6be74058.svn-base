package com.neusoft.zh.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@RequestMapping("/logout")
	public String logout(HttpSession se){
		String str = "/login.jsp";
		
		se.invalidate();
		
		return str;
	}
}
