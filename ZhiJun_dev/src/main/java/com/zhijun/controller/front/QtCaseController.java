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

import com.zhijun.bean.Casetype;
import com.zhijun.bean.Cases;
import com.zhijun.bean.Information;
import com.zhijun.dao.CaseDao;
import com.zhijun.dao.CasetypeDao;
import com.zhijun.dao.InformationDao;

@Controller
public class QtCaseController {

	@Autowired
	private InformationDao infodao;
	@Autowired
	private CasetypeDao casetypedao;
	@Autowired
	private CaseDao casedao;
	
	@RequestMapping("/case")
	public ModelAndView about(ModelAndView modelAndView,HttpServletRequest request) throws IOException{
		Map<String,Object> map=queryNewest();
		modelAndView.setViewName("front/case/case");
		modelAndView.addObject("info",map.get("info"));
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/cases", produces = "application/json; charset=utf-8")
	@ResponseBody
	private Map<String, Object> queryNewest() {
		List<Information> info = infodao.query(1);
		Map<String,Object> maps=new HashMap<String,Object>();
		maps.put("info", info);
		return maps;
	}
	
	//查询所有类型
	@RequestMapping(value = "/casetype/all_type", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Casetype> Casetype(Model model){ 
		return casetypedao.querytypeAll();
	}
	
	//根据类型查数据
		@RequestMapping(value = "/casetype/type_queryAll", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<Cases> Casetype_queryAll(@RequestParam("case_type") int case_type,Model model){  
			return casedao.typequeryAll(case_type);
		}
		
		
		@RequestMapping(value="/case/demotion_case")
		public ModelAndView demotionNews(ModelAndView modelAndView,@RequestParam(value="id") int id) throws IOException{
			Map<String,Object> map=queryNewest();
			List<Cases> cases =casedao.query(id);
			modelAndView.setViewName("front/case/demotion_case");
			modelAndView.addObject("cases",cases);
			modelAndView.addObject("info",map.get("info"));
			return modelAndView;
		}
}

