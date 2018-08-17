package com.zhijun.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QtRecruitmentController {

	@RequestMapping("/recruitment")
	public String about(HttpServletRequest request) {
		return "front/recruitment/recruitment";
	}
}
