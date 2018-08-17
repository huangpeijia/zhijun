package com.zhijun.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QtInformationController {
	
	@RequestMapping("/Information")
	public String about(HttpServletRequest request) {
		return "front/Information/Information";
	}

}
