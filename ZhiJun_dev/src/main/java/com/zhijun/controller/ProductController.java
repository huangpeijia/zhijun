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

import com.zhijun.base.ControllerBase;
import com.zhijun.bean.Product;
import com.zhijun.dao.ProductDao;

/**
 * 产品服务
 * @author hpj
 * @version 2018年7月10日
 */
@Controller
public class ProductController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductDao prodao;
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/pro")
	public String about(HttpServletRequest request) {
		return "admin/product/product";
	}
	/**
	 * 获取所有数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/pro/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Product> queryAll(Model model){
		List<Product> pro = prodao.queryAll();
		return pro;
	}
	/**
	 * 添加
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/pro/add")
	public String add(Product pro)throws ParseException{
		pro.setPro_time(new Date());
		int count = prodao.addProduct(pro);
		if(count ==1) {
			return "admin/product/product";
		}
		return "error";
		
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/pro/deleteById")
	public String deleteById(@RequestParam("pro_id") int pro_id) {
		int count = prodao.deleteProduct(pro_id);
		if(count == 1) {
			return "admin/product/product";
		}
		return "error";
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/pro/updatePro", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Product> updatePro(@RequestParam("pro_id") int pro_id, Model model){
		return prodao.query(pro_id);
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping("/admin/pro/update")
	public String update(Product pro) {
		pro.setPro_time(new Date());
		int count = prodao.update(pro);
		if(count ==1) {
			return "admin/product/product";
		}
		return null;
		
	}
	
	
	

}
