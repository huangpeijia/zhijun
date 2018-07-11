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
import com.zhijun.bean.Information;
import com.zhijun.dao.InformationDao;

/**
 * 公司信息
 * @author hpj
 * @version 2018年7月9日
 */
@Controller
public class InformationController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(InformationController.class);
	
	@Autowired
	private InformationDao infdao;
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/inf")
	public String about(HttpServletRequest request) {
		return "admin/Information/Information";
	}
	/**
	 * 查询全部
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping(value = "/admin/inf/all", produces = "application/json; charset-utf-8")
	@ResponseBody
	public List<Information> queryAll(Model model){
		List<Information> inf= infdao.queryAll();
		return inf;
	}
	/**
	 * 添加
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/inf/add")
	public String add(Information inf) throws ParseException{
		inf.setCom_time(new Date());
		int count = infdao.addInf(inf);
		if(count ==1) {
			return "admin/Information/Information";
		}
		return "error";
		
	}
	/**
	 * 删除
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/inf/deleteById")
	public String deleteById(@RequestParam("com_id") int com_id) {
		int count = infdao.deleteInf(com_id);
		if(count == 1) {
			return "admin/Information/Information";
		}
		return "error";
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping(value = "/admin/inf/updateAbout")
	@ResponseBody
	public List<Information> updateInf(@RequestParam("com_id") int com_id,Model model){
		return infdao.query(com_id);
	}
	/**
	 * 修改
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/inf/update")
	public String update(Information inf) {
		inf.setCom_time(new Date());
		int count = infdao.update(inf);
		if(count == 1) {
			return "admin/Information/Information";
		}
		return "error";
	}
	
	
}
