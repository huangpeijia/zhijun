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

import com.zhijun.bean.Protype;
import com.zhijun.dao.ProtypeDao;

@Controller
public class ProtypeController {

	private static final Logger logger= LoggerFactory.getLogger(ProductController.class);
	@Autowired
	private ProtypeDao protypedao; 
	
	@RequestMapping(value = "/admin/protype/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Protype> Protype(Model model){
		return protypedao.queryAll();
	}
	
	@RequestMapping(value = "/admin/protype/one", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Protype> Protype_one(@RequestParam("pro_id") int pro_id,Model model){
		return protypedao.select_one(pro_id);
	}
}
