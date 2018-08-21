package com.zhijun.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.bean.News;
import com.zhijun.bean.Newtype;
import com.zhijun.bean.Protype;
import com.zhijun.dao.NewtypeDao;

@Controller
public class NewtypeController {
	private static final Logger logger= LoggerFactory.getLogger(NewtypeController.class);
	@Autowired
	private NewtypeDao newtypedao;
	//查询所有数据
	@RequestMapping(value = "/admin/newtype/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Newtype> Newtype(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		System.out.println(c_page);
		return newtypedao.queryAll(c_page,7);
	}
	//查询单条
	@RequestMapping(value = "/admin/newtype/one", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Newtype> Newtype_one(@RequestParam("new_id") int new_id,Model model){
		return newtypedao.select_one(new_id);
	}
	//添加
	@RequestMapping("/admin/newtype/add")
	public String add(HttpServletRequest request,Newtype newtype) throws ParseException{ 
		int count = newtypedao.add(newtype);
		if(count == 1) {
			return "admin/type/type";
		}
		return "error";
	}
	//删除
	@RequestMapping("/admin/newtype/deleteById")
	public String deleteById(@RequestParam("newtype_id") int newtype_id) {
		int count =newtypedao.delete(newtype_id);
		if(count == 1) {
			return "admin/type/type";
		}
		return "error";
	}
	//修改
	@RequestMapping("/admin/newtype/update")
	public String update(Newtype newtype) { 
		int count = newtypedao.update(newtype);
		if(count == 1) {
			return "admin/news/news";
		}
		return "error";
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
