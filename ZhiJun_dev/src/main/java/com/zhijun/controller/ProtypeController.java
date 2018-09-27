package com.zhijun.controller;

import java.io.IOException;
import java.text.ParseException;
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

import com.zhijun.base.UploadInterface; 
import com.zhijun.bean.Protype;
import com.zhijun.dao.ProtypeDao;

@Controller
public class ProtypeController {

	private static final Logger logger= LoggerFactory.getLogger(ProductController.class);
	@Autowired
	private ProtypeDao protypedao; 
	
	//查询全部
	@RequestMapping(value = "/admin/protype/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Protype> Protype(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		System.out.println(c_page);
		return protypedao.queryAll(c_page,7);
	}
	//查询全部类型
		@RequestMapping(value = "/admin/protype/all_type", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<Protype> Protype(Model model){ 
			return protypedao.querytypeAll();
		}
	//查询单条
	@RequestMapping(value = "/admin/protype/one", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Protype> Protype_one(@RequestParam("pro_id") int pro_id,Model model){
		return protypedao.select_one(pro_id);
	}
	
	//查询数量
	@RequestMapping(value = "/admin/protype/countall")
	@ResponseBody
	public Integer countAll() {
		Integer count =protypedao.countAll(); 
		return count;
		
	}
	//添加
		@RequestMapping(value="/admin/protype/add", method=RequestMethod.POST)
		public String add(HttpServletRequest request,MultipartFile pro_upload,Protype protype) throws ParseException, IOException{ 
			if(pro_upload==null) {
				return "error";
			}else {
				String pro_upload_name=UploadInterface.upload_one(request,pro_upload);
				protype.setProtype_photo(pro_upload_name);
			}
			int count = protypedao.add(protype);
			if(count == 1) {
				return "admin/type/type";
			}
			return "error";
		}
		//删除
		@RequestMapping("/admin/protype/deleteById")
		public String deleteById(@RequestParam("protype_id") int protype_id) {
			int count =protypedao.delete(protype_id);
			if(count == 1) {
				return "admin/type/type";
			}
			return "error";
		}
		//修改
		@RequestMapping(value="/admin/protype/update",method=RequestMethod.POST)
		public String update(HttpServletRequest request,MultipartFile pro_photo,Protype protype) throws IOException { 
			System.out.println(pro_photo);
			String old_photo =request.getParameter("old_photo");
			String pro_upload_name;
			if(pro_photo==null){
				protype.setProtype_photo(old_photo);
				System.out.println("old_photo:::"+old_photo);
			}else {
				pro_upload_name = UploadInterface.upload_one(request, pro_photo);
				protype.setProtype_photo(pro_upload_name);
				System.out.println("pro_name:::"+pro_upload_name);
			}
			int count = protypedao.update(protype);
			if(count == 1) {
				return "admin/type/type";
			}
			return "error";
		}
}
