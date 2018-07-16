package com.zhijun.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
			int count = dao.update(userpassword);
			if(count == 1) {
				System.out.println("修改成功");
				return "/index";
			}
			return "error";
			
		}
		
		//用户登出
		@RequestMapping("admin/exit_user")
		public String exitUser(HttpServletRequest request){
			HttpSession session = request.getSession();
			session.invalidate();
			return "index";
		}
		
}
