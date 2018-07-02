package com.zhijun.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.bean.Student;
import com.zhijun.dao.LoginDao;
import com.zhijun.dao.StudentDao;

/**
 * 
 * @author hpj
 * @version 2018年7月2日
 */
@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private LoginDao dao;
	
	// 从数据库中获取所有学生
		@RequestMapping("/home") 
		public String selectOne(@RequestParam("username") String username,@RequestParam("userpassword") String userpassword,Model model) {
			// ApplicationContext context = new
			// ClassPathXmlApplicationContext("applicationContext.xml");
			// 从ioc容器获取dao
			boolean users = dao.loginsystem(username, userpassword);
			System.out.println(users);
			if(users) {
				return "list";
			}else {
				return "index";
			}
		}
}
