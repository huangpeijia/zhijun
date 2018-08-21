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

import com.zhijun.bean.Information;
import com.zhijun.dao.InformationDao;

@Controller
public class QtProductController {
	
	@Autowired
	private InformationDao infodao;

	@RequestMapping("/product")
	public ModelAndView about(ModelAndView modelAndView,HttpServletRequest request) throws IOException{
		Map<String,Object> map=queryNewest();
		modelAndView.setViewName("front/product/product");
		modelAndView.addObject("info",map.get("info"));
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/pros", produces = "application/json; charset=utf-8")
	@ResponseBody
	private Map<String, Object> queryNewest() {
		List<Information> info = infodao.query(1);
		Map<String,Object> maps=new HashMap<String,Object>();
		maps.put("info", info);
		return maps;
	}
}
