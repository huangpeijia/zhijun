package com.zhijun.controller.front;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody; 
import org.springframework.web.servlet.ModelAndView;

import com.zhijun.bean.Cases;
import com.zhijun.bean.Information;
import com.zhijun.bean.News;
import com.zhijun.bean.Product;
import com.zhijun.controller.DocumentController;
import com.zhijun.dao.CaseDao;
import com.zhijun.dao.InformationDao;
import com.zhijun.dao.NewsDao;
import com.zhijun.dao.ProductDao;
/**
 * 首页数据
 * @author hpj
 *
 */
@Controller
public class QtIndexController {

	@Autowired
	private ProductDao prodao;
	@Autowired
	private NewsDao newsdao;
	@Autowired
	private CaseDao casedao;
	@Autowired
	private InformationDao infodao;
	
	@RequestMapping("/index")
	public ModelAndView about(ModelAndView modelAndView,HttpServletRequest request) throws IOException {
		DocumentController docu=new DocumentController();
		Map<String,Object> map=queryNewest();
		String video_path =docu.select_video(request);
		modelAndView.setViewName("/index");
		modelAndView.addObject("cases",map.get("cases"));
		modelAndView.addObject("pro", map.get("pro"));
		modelAndView.addObject("news", map.get("news"));
		modelAndView.addObject("info", map.get("info"));
		modelAndView.addObject("video_path", video_path); 
		return modelAndView;
	}
	/**
	 * 查询首页所需的数据
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/indexs", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> queryNewest(){
		List<Product> pro =prodao.queryPro(4); //产品信息
		List<News> news = newsdao.queryNewest(9);
		List<Cases> cases = casedao.queryCase(3);
		List<Information> info = infodao.query(1);
		Map<String, Object> maps=new HashMap<String, Object>();
		maps.put("pro", pro);
		maps.put("news", news);
		maps.put("cases",cases);
		maps.put("info", info);
		return maps;
	}
	
}
