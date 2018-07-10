package com.zhijun.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

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
import com.zhijun.dao.NewsDao;

/**
 * 新闻
 * @author hpj
 * @version 2018年7月10日
 */
@Controller
public class NewsController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(NewsController.class);
	
	@Autowired
	private NewsDao newsdao;
	/**
	 * 获取所有数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/news/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<News> queryAll(Model model){
		List<News> news = newsdao.queryAll();
		return news;
	}
	/**
	 * 添加数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/news/add")
	public String add(News news) throws ParseException{
//		news.setNews_title("测试数据");
//		news.setNews_constant("测试数据");
//		news.setNews_type(1);
//		news.setNews_time(new Date());
		int count = newsdao.addNews(news);
		if(count == 1) {
			return "admin/news/news";
		}
		return "error";
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/news/deleteById")
	public String deleteById(@RequestParam("news_id") int news_id) {
		int count =newsdao.deleteNews(news_id);
		if(count == 1) {
			return "admin/news/news";
		}
		return "error";
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/news/updateNews", produces ="application/json; charset=utf-8")
	@ResponseBody
	public List<News> updateNew(@RequestParam("news_id")int news_id,Model model){
		return newsdao.query(news_id);
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/news/update")
	public String update(News news) {
//		news.setNews_id(2);
//		news.setNews_title("测试数1据");
//		news.setNews_constant("测试1数据");
//		news.setNews_type(1);
//		news.setNews_time(new Date());
		int count = newsdao.update(news);
		if(count == 1) {
			return "admin/news/news";
		}
		return "error";
	}
	
	
	
}
