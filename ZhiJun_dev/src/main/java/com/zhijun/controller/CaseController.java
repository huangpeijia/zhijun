package com.zhijun.controller;

import java.text.ParseException;
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
import com.zhijun.bean.Cases;
import com.zhijun.dao.CaseDao;

/**
 * 案例
 * @author hpj
 * @version 2018年7月9日
 */
@Controller
public class CaseController extends ControllerBase{
	private static final Logger logger = LoggerFactory.getLogger(CaseController.class);
	
	@Autowired
	private CaseDao casedao;
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/case")
	public String about(HttpServletRequest request) {
		return "admin/case/case";
	}
	/**
	 * 获取所有数据
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping(value = "/admin/case/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Cases> queryAll(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*5;
		List<Cases> cases = casedao.queryAll(c_page,5);
		return cases;
	}
	/**
	 * 添加数据
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/case/add")
	public String add(Cases cases) throws ParseException{
		cases.setCase_time(new Date());
		int count = casedao.addCases(cases);
		if(count == 1){
			return "admin/case/case";
		}
		return "error";
		
	}
	/**
	 * 删除
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/case/deleteById")
	public String deleteById(@RequestParam("case_id") int case_id) {
		int count =casedao.deleteCases(case_id);
		if(count ==1) {
			return "admin/case/case";
		}
		return "error";
		
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping(value = "/admin/case/updateCase", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Cases> updateCase(@RequestParam("case_id") int case_id, Model model){
		return casedao.query(case_id);
	}
	/**
	 * 修改
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/case/update")
	public String update(Cases cases){
		cases.setCase_time(new Date());
		int count = casedao.update(cases);
		if(count == 1) {
			return "admin/case/case";
		}
		return "error";
	}
	
	
	
	
}
