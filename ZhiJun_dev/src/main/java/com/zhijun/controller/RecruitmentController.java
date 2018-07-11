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
import com.zhijun.bean.Recruitment;
import com.zhijun.dao.RecruitmentDao;

/**
 * 人才招聘
 * @author hpj
 * @version 2018年7月10日
 */
@Controller
public class RecruitmentController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(RecruitmentController.class);
	@Autowired
	private RecruitmentDao recdao;
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/rec")
	public String about(HttpServletRequest request) {
		return "admin/recruitment/recruitment";
	}
	/**
	 * 查询所有
	 * 方法
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/rec/all" , produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Recruitment> queryAll(Model model){
		List<Recruitment> rec = recdao.queryAll();
		return rec;
	}
	/**
	 * 添加
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/rec/add")
	public String add(Recruitment rec) throws ParseException{
		int count = recdao.addRec(rec);
		if(count == 1) {
			return "admin/recruitment/recruitment";
		}
		return "error";
		
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/rec/deleteById")
	public String deleteById(@RequestParam("rec_id") int rec_id) {
		int count = recdao.deleteRec(rec_id);
		if(count == 1) {
			return "admin/recruitment/recruitment";
		}
		return "error";
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/rec/updateRec", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Recruitment> updateRec(@RequestParam("rec_id") int rec_id,Model model){
		return recdao.query(rec_id);
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/rec/update")
	public String update(Recruitment rec) {
		int count = recdao.update(rec);
		if(count == 1) {
			return "admin/recruitment/recruitment";
		}
		return "error";
		
	}
	
	
	
	
}
