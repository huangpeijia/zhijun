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

import com.zhijun.bean.Casetype;
import com.zhijun.bean.Protype;
import com.zhijun.dao.CasetypeDao;

@Controller
public class CasetypeController {
	private static final Logger logger = LoggerFactory.getLogger(CaseController.class);
	@Autowired
	private CasetypeDao casetypedao;
	
	@RequestMapping(value = "/admin/casetype/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Casetype> Casetype(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		System.out.println(c_page);
		return casetypedao.queryAll(c_page,7);
	}
	
	@RequestMapping(value = "/admin/casetype/one", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Casetype> Casetype_one(@RequestParam("case_id") int case_id,Model model){
		return casetypedao.select_one(case_id);
	}
	//查询数量
		@RequestMapping(value = "/admin/casetype/countall")
		@ResponseBody
		public Integer countAll() {
			Integer count =casetypedao.countAll(); 
			return count;
			
		}
		//添加
		@RequestMapping("/admin/casetype/add")
		public String add(HttpServletRequest request,Casetype casetype) throws ParseException{ 
			int count = casetypedao.add(casetype);
			if(count == 1) {
				return "admin/type/type";
			}
			return "error";
		}
		//删除
		@RequestMapping("/admin/casetype/deleteById")
		public String deleteById(@RequestParam("casetype_id") int casetype_id) {
			int count =casetypedao.delete(casetype_id);
			if(count == 1) {
				return "admin/type/type";
			}
			return "error";
		}	 
		//修改
				@RequestMapping("/admin/casetype/update")
				public String update(Casetype casetype) { 
					int count = casetypedao.update(casetype);
					if(count == 1) {
						return "admin/type/type";
					}
					return "error";
				}
}
