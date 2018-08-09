package com.zhijun.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zhijun.base.ShaInterface;
import com.zhijun.bean.Login;
import com.zhijun.bean.Recruitment;
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
	
	/**
	 * 跳转登录页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/login")
	public String Login(HttpServletRequest request) {
		return "login";
	}
	@RequestMapping("/admin")
	public String Index1(HttpServletRequest request) {		
	    return "login";
	}
	
	
	/**
	 * 跳转首页
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/index")
	public String Index(HttpServletRequest request) {
	    return "admin/index";
	}
	
		@RequestMapping("/admin/enter") 
		public ModelAndView selectOne(@RequestParam(value="username",required=false) String username,@RequestParam(value="userpassword",required=false) String userpassword,Model model) {
			// ApplicationContext context = new
			// ClassPathXmlApplicationContext("applicationContext.xml");
			// 从ioc容器获取dao 
			if(username==null||userpassword==null) { 
				ModelAndView mv = new ModelAndView("redirect:/admin/login");
			    return mv;
			}
			username=ShaInterface.getResult(username);
			userpassword=ShaInterface.getResult(userpassword);
			boolean users = dao.loginsystem(username, userpassword);
			if(users) {
				ModelAndView mv = new ModelAndView("redirect:/admin/index");
			    return mv;
			}else {
				ModelAndView mv = new ModelAndView("redirect:/admin/login");
			    return mv;
			}
		}
		
		/**
		 * 查询一条信息(用户)
		 * 方法
		 * @author hpj
		 * @version 2018年7月10日
		 */
		@RequestMapping(value = "/admin/user/updateUser", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<Login> updateUser(@RequestParam("user_id") int user_id,Model model){
			return dao.query(user_id);
		}
		
		/**
		 * 修改密码（用户）
		 * 方法
		 * @author hpj
		 * @version 2018年7月10日
		 */
		@RequestMapping("/admin/user/update")
		public String update(String userpassword) {
			userpassword=ShaInterface.getResult(userpassword);
			int count = dao.update(userpassword);
			if(count == 1) {
				System.out.println("修改成功");
				return "/index";
			}
			return "error";
			
		}
		
		@RequestMapping(value = "/admin/user/replacement")
		@ResponseBody
		public String replacement(@RequestParam("replacement") String replacement,Model model){
			System.out.println("进来控制器"); 
			String userpasswrod=ShaInterface.getResult(replacement);
			return userpasswrod; 
		}
		
}
