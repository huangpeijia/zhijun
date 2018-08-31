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

import com.zhijun.bean.Product;
import com.zhijun.bean.Cases;
import com.zhijun.bean.Information;
import com.zhijun.dao.InformationDao;
import com.zhijun.dao.ProductDao;
import com.zhijun.dao.ProtypeDao;
import com.zhijun.bean.Protype;

@Controller
public class QtProductController {
	
	@Autowired
	private InformationDao infodao;
	@Autowired
	private ProtypeDao protypedao;
	@Autowired
	private ProductDao prodao;

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
	
	@RequestMapping(value="/product/demotion_product")
	public ModelAndView demotion_product(ModelAndView modelAndView,@RequestParam(value="pro_type") int pro_type) throws IOException {
		Map<String,Object> map=queryNewest();
		List<Protype> protype=protypedao.select_one(pro_type);
		modelAndView.setViewName("front/product/demotion_product");
		modelAndView.addObject("protype",protype);
		modelAndView.addObject("info",map.get("info"));
		return modelAndView;
		
	}
	
	//查询所有类型
		@RequestMapping(value = "/protype/all_type", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<Protype> Protype(Model model){ 
			return protypedao.querytypeAll();
		}
		
		//根据类型查数据
		@RequestMapping(value = "/protype/pro_queryAll", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<Product> protype_queryAll(@RequestParam("pro_type") int pro_type,Model model){  
			return prodao.typequeryAll(pro_type);
		}
		
		//根据id查数据
		@RequestMapping(value="/product/demotion_pro", produces = "application/json; charset=utf-8")
		@ResponseBody
		public List<Product> demotionPros(@RequestParam(value="pro_id") int pro_id,Model model){			 
			
			return prodao.query(pro_id);
		}
}
