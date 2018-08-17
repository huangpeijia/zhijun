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

import com.zhijun.bean.Newtype;
import com.zhijun.bean.Protype;
import com.zhijun.dao.NewtypeDao;

@Controller
public class NewtypeController {
	private static final Logger logger= LoggerFactory.getLogger(NewtypeController.class);
	@Autowired
	private NewtypeDao newtypedao;
	
	@RequestMapping(value = "/admin/newtype/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Newtype> Newtype(Model model){
		return newtypedao.queryAll();
	}
	
	@RequestMapping(value = "/admin/newtype/one", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Newtype> Newtype_one(@RequestParam("new_id") int new_id,Model model){
		return newtypedao.select_one(new_id);
	}
	/**
	 * 查询全部数量
	 * 方法 
	 */
	@RequestMapping(value = "/admin/newtype/countall")
	@ResponseBody
	public Integer countAll() {
		Integer count =newtypedao.countAll();
		System.out.println(count);
		return count;
		
	}
}
