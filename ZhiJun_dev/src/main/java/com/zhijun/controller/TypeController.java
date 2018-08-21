package com.zhijun.controller;

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
import com.zhijun.bean.Casetype;
import com.zhijun.dao.CasetypeDao;
import com.zhijun.dao.NewtypeDao;
import com.zhijun.dao.ProtypeDao;

@Controller
public class TypeController {
	private static final Logger logger= LoggerFactory.getLogger(TypeController.class);
	@Autowired
	private NewtypeDao newtypedao;
	@Autowired
	private ProtypeDao protypedao;
	@Autowired
	private CasetypeDao casetypedao;
	
	@RequestMapping("/admin/type")
	public String Index1(HttpServletRequest request) {		
	    return "admin/type/type";
	}
	/**
	 * 查询新闻所有数据
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/type/new", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Newtype> Newtype(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		System.out.println(c_page);
		return newtypedao.queryAll(c_page,7);
	}
	
	@RequestMapping(value = "/admin/type/pro", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Protype> Protype(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		System.out.println(c_page);
		return protypedao.queryAll(c_page,7);
	}
	@RequestMapping(value = "/admin/type/case", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Casetype> Casetype(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		System.out.println(c_page);
		return casetypedao.queryAll(c_page,7);
	}
}
