package com.zhijun.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QtAboutController {

	@RequestMapping("/about")
	public String about(HttpServletRequest request) {
		return "front/about_us/about_us";
	}
}
