package com.zhijun.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zhijun.base.ControllerBase;
import com.zhijun.base.UploadInterface;
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
	 * 查询全部数量
	 * 方法
	 * @author hpj
	 * @version 2018年7月12日
	 */
	@RequestMapping(value = "/admin/case/countall")
	@ResponseBody
	public Integer countAll() {
		Integer count =casedao.countAll();
		System.out.println(count);
		return count;
		
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
		c_page=0+c_page*7;
		List<Cases> cases = casedao.queryAll(c_page,7);
		return cases;
	}
	/**
	 * 添加数据
	 * 方法
	 * @version 2018年7月9日
	 * @throws IOException 
	 */
	@RequestMapping(value="/admin/case/add", method=RequestMethod.POST)
	public String add(HttpServletRequest request,MultipartFile case_upload,Cases cases) throws ParseException, IOException{
		if(case_upload==null) {
			return "error";
		}else {
			String case_upload_name=UploadInterface.upload_one(request,case_upload);
			cases.setCase_photo(case_upload_name);
			System.out.println("========================"+case_upload_name);
		}
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
	 * @throws IOException 
	 */
	@RequestMapping(value="/admin/case/update",method=RequestMethod.POST)
	public String update(HttpServletRequest request,MultipartFile case_photo) throws IOException{
		int case_id =Integer.parseInt(request.getParameter("case_id"));
		String case_name =request.getParameter("case_name");
		String case_constant =request.getParameter("case_constant");
		String old_photo =request.getParameter("old_photo");
		int case_type=Integer.parseInt(request.getParameter("case_type"));
		Cases cases=new Cases();
		String cases_upload_name;
		if(case_photo==null) {
			cases.setCase_photo(old_photo); 
		}else {
			cases_upload_name=UploadInterface.upload_one(request,case_photo);
			 cases.setCase_photo(cases_upload_name); 
		}
		cases.setCase_id(case_id);
		cases.setCase_name(case_name);
		cases.setCase_constant(case_constant);
		cases.setCase_type(case_type);
		cases.setCase_time(new Date());
		int count = casedao.update(cases);
		if(count == 1) {
			return "admin/case/case";
		}
		return "error";
	}
	
	
	
	
}
