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

import com.zhijun.bean.About;
import com.zhijun.bean.Information;
import com.zhijun.bean.Qualification;
import com.zhijun.dao.AboutDao;
import com.zhijun.dao.InformationDao;
import com.zhijun.dao.QualificationDao;

@Controller
public class QtInformationController {
	
	@Autowired
	private InformationDao infodao;
	@Autowired
	private AboutDao aboutdao;
	@Autowired
	private QualificationDao quadao;
	
	
	@RequestMapping("/Information")
	public ModelAndView about(ModelAndView modelAndView,HttpServletRequest request) throws IOException{
		Map<String,Object> map=queryNewest();
		modelAndView.setViewName("front/Information/Information");
		modelAndView.addObject("info",map.get("info"));
		modelAndView.addObject("about",map.get("about"));
		modelAndView.addObject("qua",map.get("qua"));
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/infos", produces = "application/json; charset=utf-8")
	@ResponseBody
	private Map<String, Object> queryNewest() {
		List<Information> info = infodao.query(1);
		List<About> about = aboutdao.query(1);
		List<Qualification> qua=quadao.type_query(1);
		Map<String,Object> maps=new HashMap<String,Object>();
		maps.put("info", info);
		maps.put("about", about);
		maps.put("qua",qua);
		return maps;
	}

}
