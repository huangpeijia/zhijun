package com.zhijun.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.bean.About; 
import com.zhijun.dao.AboutDao;

/**
 * 关于我们
 * @author hpj
 * @version 2018年7月6日
 */
@Controller
public class AboutController {
	private static final Logger logger= LoggerFactory.getLogger(AboutController.class);
	
	@Autowired
	private AboutDao aboutdao;
	
	// 从数据库中获取所有学生
		@RequestMapping(value = "/admin/about", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<About> queryAll(Model model) { 
			// 从ioc容器获取dao
			List<About> students = aboutdao.queryAll();
			System.out.println("sdsdsdsd"+students.size());
			return students;
		}
}
