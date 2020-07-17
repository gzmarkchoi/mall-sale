package com.atguigu.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("goto_login")
	public String goto_login(HttpServletRequest request, ModelMap map) {

		return "login";
	}

	@RequestMapping("index")
	public String index(HttpServletRequest request, ModelMap map) {

//		String userName = "";
//		Cookie[] cookies = request.getCookies();
//
//		if (cookies != null && cookies.length > 0) {
//			for (int i = 0; i < cookies.length; i++) {
//				String name = cookies[i].getName();
//				if (name.equals("yh_mch")) {
//					userName = cookies[i].getValue();
//				}
//			}
//		}
//
//		map.put("yh_mch", userName);

		return "index";
	}

}
