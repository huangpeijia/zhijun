package com.zhijun.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhijun.base.ControllerBase;
import com.zhijun.bean.News;
import com.zhijun.bean.Product;
import com.zhijun.dao.CaseDao;
import com.zhijun.dao.NewsDao;
import com.zhijun.dao.ProductDao;
import com.zhijun.dao.QualificationDao;

/**
 *首页
 * @author wzh
 * @version 2018年7月20日
 */
@Controller
public class IndexController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(NewsController.class);
	
	@Autowired
	private NewsDao newsdao;
	@Autowired
	private ProductDao prodao;
	@Autowired
	private CaseDao casedao;
	@Autowired
	private QualificationDao quadao;
	
	
	/*
	 * 获取新闻、资质、产品、案例的总数
	 * */
	@RequestMapping("/admin/index/countall")
	@ResponseBody
	public Map<String, Integer> countAll(){
		Integer newscount =newsdao.countAll();
		Integer procount =prodao.countAll();
		Integer casecount =casedao.countAll();
		Integer quacount =quadao.countAll();
		Map<String, Integer> m=new HashMap<String, Integer>();
		m.put("news_count", newscount);
		m.put("pro_count", procount);
		m.put("case_count", casecount);
		m.put("qua_count", quacount);
		return m;
	}
	
	/**
	 * 获取新闻最新四条数据
	 * 方法
	 * @author wzh
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/index/newest", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<News> queryNewest(@RequestParam("number")int num,Model model){
		List<News> news = newsdao.queryNewest(num);
		return news;
	}
	
	/**
	 * 获取产品信息最新两条数据
	 * 方法
	 * @author wzh
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/index/pro_newest", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Product> queryNewest1(@RequestParam("number")int num,Model model){
		List<Product> pro = prodao.queryPro(num);
		return pro;
	}
}