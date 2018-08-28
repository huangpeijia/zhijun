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

import com.zhijun.bean.Recruitment;
import com.zhijun.bean.Information;
import com.zhijun.dao.InformationDao;
import com.zhijun.dao.RecruitmentDao;

@Controller
public class QtRecruitmentController {
	
	@Autowired
	private InformationDao infodao;
	@Autowired
	private RecruitmentDao recdao;

	@RequestMapping("/recruitment")
	public ModelAndView about(ModelAndView modelAndView,HttpServletRequest request) throws IOException{
		Map<String,Object> map=queryNewest();
		modelAndView.setViewName("front/recruitment/recruitment");
		modelAndView.addObject("info",map.get("info"));
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/recs", produces = "application/json; charset=utf-8")
	@ResponseBody
	private Map<String, Object> queryNewest() {
		List<Information> info = infodao.query(1);
		Map<String,Object> maps=new HashMap<String,Object>();
		maps.put("info", info);
		return maps;
	}
	
	//根据类型查数据
	@RequestMapping(value = "/type_queryAll", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Recruitment> Rectype_queryAll(@RequestParam("rec_type") int rec_type,Model model){  
		return recdao.type_queryall(rec_type);
	}
			
	/**
	 * 根据id查数据
	 * 方法
	 * @author wzh
	 * @version 2018年8月28日
	 */
	@RequestMapping(value = "/id_queryAll", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Recruitment> Recid_queryAll(@RequestParam("rec_id") int rec_id,Model model){
		return recdao.query(rec_id);
	}
}
