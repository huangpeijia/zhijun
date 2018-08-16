package com.zhijun.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.bean.Casetype; 
import com.zhijun.dao.CasetypeDao;

@Controller
public class CasetypeController {
	private static final Logger logger = LoggerFactory.getLogger(CaseController.class);
	@Autowired
	private CasetypeDao casetypedao;
	
	@RequestMapping(value = "/admin/casetype/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Casetype> Casetype(Model model){
		return casetypedao.queryAll();
	}
	
	@RequestMapping(value = "/admin/casetype/one", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Casetype> Casetype_one(@RequestParam("case_id") int case_id,Model model){
		return casetypedao.select_one(case_id);
	}
}
