package com.zhijun.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
	 * 查询全部数量
	 * 方法
	 * @author hpj
	 * @version 2018年7月12日
	 */
	@RequestMapping(value = "/admin/qua/countall")
	@ResponseBody
	public Integer countAll() {
		Integer count =quadao.countAll();
		System.out.println(count);
		return count;
		
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
		c_page=0+c_page*7;
		List<Qualification> qua =quadao.queryAll(c_page,7);
		return qua;
	}
	/**
	 * 添加数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 * @throws IOException 
	 */ 
	@RequestMapping(value="/admin/qua/add", method=RequestMethod.POST)
	public String add(HttpServletRequest request,MultipartFile qua_upload,Qualification qua) throws ParseException, IOException{
		if(qua_upload==null) {
			return "error";
		}else {
			String qua_upload_name=UploadInterface.upload_one(request,qua_upload);
			qua.setQua_photo(qua_upload_name); 
		}
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
	 * @throws IOException 
	 */ 
	@RequestMapping(value="/admin/qua/update",method=RequestMethod.POST)
	public String update(HttpServletRequest request,MultipartFile qua_photo) throws IOException {
		int qua_id =Integer.parseInt(request.getParameter("qua_id"));
		String qua_name =request.getParameter("qua_name");
		String qua_constant =request.getParameter("qua_constant");
		String old_photo =request.getParameter("old_photo");
		int qua_type =Integer.parseInt(request.getParameter("qua_type"));
		int qua_date =Integer.parseInt(request.getParameter("qua_date"));
		Qualification qua =new Qualification();
		String qua_upload_name;
		if(qua_photo==null) {
			qua.setQua_photo(old_photo); 
		}else {
			 qua_upload_name=UploadInterface.upload_one(request,qua_photo);
			qua.setQua_photo(qua_upload_name); 
		}
		qua.setQua_id(qua_id);
		qua.setQua_name(qua_name);
		qua.setQua_constant(qua_constant);
		qua.setQua_type(qua_type);
		qua.setQua_date(qua_date);
		qua.setQua_time(new Date());
		int count = quadao.update(qua);
		System.out.println(count);
		if(count ==1) {
			return "admin/qualification/qualification";
		}
		return "error";
	} 
	 
	
}
