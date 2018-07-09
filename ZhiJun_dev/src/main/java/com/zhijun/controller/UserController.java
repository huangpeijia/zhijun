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
		@RequestMapping("/admin/home") 
		public String selectOne(@RequestParam(value="username",required=false) String username,@RequestParam(value="userpassword",required=false) String userpassword,Model model) {
			// ApplicationContext context = new
			// ClassPathXmlApplicationContext("applicationContext.xml");
			// 从ioc容器获取dao
			if(username==null||userpassword==null) {
				System.out.println("进入");
				return "index";
			}
			boolean users = dao.loginsystem(username, userpassword);
			System.out.println(users);
			if(users) {
				return "list";
			}else {
				return "index";
			}
		}
		
		//我用来测试静态页面的，你先别删（wzh）
		@RequestMapping("/dd")
		public String dd(){
			return "admin/index";
		}
		//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/case")
				public String dd2(){
					return "admin/case/case";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/company/1")
				public String dd3(){
					return "admin/company/firm";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/company/2")
				public String dd4(){
					return "admin/company/honor";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/company/3")
				public String dd5(){
					return "admin/company/video";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/contact")
				public String dd6(){
					return "admin/contact/contact";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/filemanager")
				public String dd7(){
					return "admin/filemanager/file";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/news/1")
				public String dd8(){
					return "admin/news/fnews";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/news/2")
				public String dd9(){
					return "admin/news/tnews";
				}
				//我用来测试静态页面的，你先别删（wzh）
				@RequestMapping("/dd/personal")
				public String dd10(){
					return "admin/personal/amend";
				}
				@RequestMapping("/dd/service")
				public String dd11(){
					return "admin/service/service";
				}
}
