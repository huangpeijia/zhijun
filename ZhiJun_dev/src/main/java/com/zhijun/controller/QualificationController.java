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
import com.zhijun.bean.Qualification;
import com.zhijun.dao.QualificationDao;

/**
 * 公司资质
 * @author hpj
 * @version 2018年7月10日
 */
@Controller
public class QualificationController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(QualificationController.class);
	@Autowired
	private QualificationDao quadao;
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/qua")
	public String about(HttpServletRequest request) {
		return "admin/qualification/qualification";
	}
	/**
	 * 查询所有数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/qua/all", produces = "application/json; charset-utf-8")
	@ResponseBody
	public List<Qualification> queryAll(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*5;
		List<Qualification> qua =quadao.queryAll(c_page,5);
		return qua;
	}
	/**
	 * 添加数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/qua/add")
	public String add(Qualification qua) throws ParseException{
		qua.setQua_time(new Date());
		int count =quadao.addQua(qua);
		if(count ==1) {
			return  "admin/qualification/qualification";
		}
		return "error";
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/qua/deleteById")
	public String deleteById(@RequestParam("qua_id") int qua_id) {
		int count = quadao.deleteProduct(qua_id);
		if(count ==1) {
			return "admin/qualification/qualification";
		}
		return "error";
	}
	/**
	 * 查询一条数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/qua/updateAbout", produces= "application/json; charset=utf-8")
	@ResponseBody
	public List<Qualification> updateQua(@RequestParam("qua_id") int qua_id, Model model){
		return quadao.query(qua_id);
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/qua/update")
	public String update(Qualification qua) {
		qua.setQua_time(new Date());
		int count = quadao.update(qua);
		if(count ==1) {
			return "admin/qualification/qualification";
		}
		return "error";
	}
	 
	
}
