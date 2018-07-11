package com.zhijun.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.base.ControllerBase;
import com.zhijun.bean.About; 
import com.zhijun.dao.AboutDao;

/**
 * 关于我们
 * @author hpj
 * @version 2018年7月6日
 */
@Controller
public class AboutController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(AboutController.class);
	
	@Autowired
	private AboutDao aboutdao;
	
	// 从数据库中获取所有数据
	@RequestMapping(value = "/admin/about/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<About> queryAll(Model model) { 
		// 从ioc容器获取dao
		List<About> about = aboutdao.queryAll(); 
		return about;
	}
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/about")
	public String about(HttpServletRequest request) {
		return "admin/about_us/about_us";
	}
	/*
	 * 添加数据
	 */
	@RequestMapping("/admin/about/add")
	public String add(About about) throws ParseException {
		about.setAbout_time(new Date());
		int count = aboutdao.addAbout(about);
		if(count == 1) {
			return "admin/about_us/about_us";
		}
		return "error";
	}
	
	/**
	 * 删除
	 * 方法
	 */
	@RequestMapping("/admin/about/deleteById")
	public String deleteById(@RequestParam("about_id") int about_id) {
		int count = aboutdao.deleteAbout(about_id);
		if(count ==1) {
			return "admin/about_us/about_us";
		}
		return "error";
	}
	
	/**
	 * 查询一条信息
	 * 方法
	 */
	@RequestMapping(value = "/admin/about/updateAbout", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<About> updateAbout(@RequestParam("about_id") int about_id, Model model){
		return aboutdao.query(about_id);
	}
	/**
	 * 修改
	 * 方法
	 */
	@RequestMapping("/admin/about/update")
	public String update(About about) {
		about.setAbout_time(new Date());
		int count = aboutdao.update(about);
		if(count == 1) {
			return "admin/about_us/about_us";
		}
		return "error";
	}
	 
}
