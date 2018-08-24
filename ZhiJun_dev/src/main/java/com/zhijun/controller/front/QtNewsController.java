package com.zhijun.controller.front;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zhijun.bean.Information;
import com.zhijun.bean.News;
import com.zhijun.dao.InformationDao;
import com.zhijun.dao.NewsDao;

@Controller
public class QtNewsController {
	
	@Autowired
	private InformationDao infodao;
	@Autowired
	private NewsDao newsdao;

	@RequestMapping("/news")
	public ModelAndView about(ModelAndView modelAndView,HttpServletRequest request) throws IOException{
		Map<String,Object> map=queryNewest();
		modelAndView.setViewName("front/news/news");
		modelAndView.addObject("info",map.get("info"));
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/newss", produces = "application/json; charset=utf-8")
	@ResponseBody
	private Map<String, Object> queryNewest() {
		List<Information> info = infodao.query(1);
		Map<String,Object> maps=new HashMap<String,Object>();
		maps.put("info", info);
		return maps;
	}
	
	@RequestMapping(value = "/news/news_all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<News> queryAll(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		int list_number=14;
		c_page=0+c_page*list_number;
		List<News> news = newsdao.queryAll(c_page,list_number);
		return news;
	}
	
	@RequestMapping(value = "/news/countall")
	@ResponseBody
	public Integer countAll() {
		Integer count =newsdao.countAll(); 
		return count;
		
	}
}
