package com.zhijun.controller;

import java.text.ParseException;
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

import com.zhijun.bean.Newtype;
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
		@RequestMapping("/admin/protype/add")
		public String add(HttpServletRequest request,Protype protype) throws ParseException{ 
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
		@RequestMapping("/admin/protype/update")
		public String update(Protype protype) { 
			int count = protypedao.update(protype);
			if(count == 1) {
				return "admin/type/type";
			}
			return "error";
		}
}
