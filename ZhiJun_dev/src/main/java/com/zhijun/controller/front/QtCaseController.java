package com.zhijun.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QtCaseController {

	
	@RequestMapping("/case")
	public String about(HttpServletRequest request) {
		return "front/case/case";
	}
}
