package com.zhijun.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.bean.Newtype;
import com.zhijun.dao.NewtypeDao;

@Controller
public class TypeController {
	private static final Logger logger= LoggerFactory.getLogger(TypeController.class);
	@Autowired
	private NewtypeDao newtypedao;

	@RequestMapping("/admin/type")
	public String Index1(HttpServletRequest request) {		
	    return "admin/type/type";
	}
	/**
	 * 查询所有数据
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/type/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Newtype> Newtype(Model model){
		return newtypedao.queryAll();
	}
	
	
}
