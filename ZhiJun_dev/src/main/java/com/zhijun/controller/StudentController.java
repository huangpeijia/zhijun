package com.zhijun.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.base.ControllerBase;
import com.zhijun.bean.Student;
import com.zhijun.dao.StudentDao;
 

/**
 * Student类控制器
 * @author administrator_2018
 * @date 2018年3月26日
 */
@Controller
public class StudentController extends ControllerBase {

	private static final Logger logger = LoggerFactory.getLogger(StudentController.class);
	
	@Autowired
	private StudentDao dao;

	// 从数据库中获取所有学生
	@RequestMapping(value = "/admin/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Student> queryAll(Model model) {
		// ApplicationContext context = new
		// ClassPathXmlApplicationContext("applicationContext.xml");
		// 从ioc容器获取dao
		List<Student> students = dao.queryAll();

		return students;
	}

	// 添加一个学生
	@RequestMapping("/admin/add")
	public String add(Student student) {
		// ApplicationContext context = new
		// ClassPathXmlApplicationContext("applicationContext.xml");
		// 从ioc容器获取dao
		int count = dao.addStu(student);
		if (count == 1) {
			return "list";
		}
		return "error";
	}

	// 删除学生
	@RequestMapping("/admin/deleteById")
	@ResponseBody
	public String deleteById(@RequestParam("id") int id) {
		// ApplicationContext context = new
		// ClassPathXmlApplicationContext("applicationContext.xml");
		int count = dao.deleteStu(id);
		if (count == 1) {
			return "list";
		}
		return "error";
	}

	// 查询学生个人信息
	@RequestMapping(value = "/admin/updateStu", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Student> updateStu(@RequestParam("id") int id, Model model) {
		return dao.query(id);
	}

	// 学生修改信息
	@RequestMapping("/admin/update")
	@ResponseBody
	public String Update(Student student) {
		int count = dao.update(student);
		if (count == 1) {
			return "list";
		}
		return "error";
	}

//	@RequestMapping("/home")
//	public String home() {
//		return "list";
//	}

	@RequestMapping("/index")
	public String index(HttpServletRequest request) {
		return "index";
	}
}
