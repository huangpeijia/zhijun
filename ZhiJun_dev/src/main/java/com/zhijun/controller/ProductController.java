package com.zhijun.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zhijun.base.ControllerBase;
import com.zhijun.base.UploadInterface;
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
	 * 查询全部数量
	 * 方法
	 * @author hpj
	 * @version 2018年7月12日
	 */
	@RequestMapping(value = "/admin/pro/countall")
	@ResponseBody
	public Integer countAll() {
		Integer count =prodao.countAll();
		System.out.println(count);
		return count;
		
	}
	/**
	 * 获取所有数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	@RequestMapping(value = "/admin/pro/all", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Product> queryAll(@RequestParam("c_page") int c_page,Model model){
		c_page-=1;
		c_page=0+c_page*7;
		List<Product> pro = prodao.queryAll(c_page,7);
		return pro;
	}
	/**
	 * 添加
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 * @throws IOException 
	 */
	@RequestMapping(value="/admin/pro/add", method=RequestMethod.POST)
	public String add(HttpServletRequest request,MultipartFile pro_upload,Product pro)throws ParseException, IOException{
		if(pro_upload==null) {
			return "error";
		}else {
			String pro_upload_name=UploadInterface.upload_one(request,pro_upload);
			pro.setPro_photo(pro_upload_name);
			System.out.println("========================"+pro_upload_name);
		}
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
	 * @throws IOException 
	 */
	@RequestMapping(value="/admin/pro/update",method=RequestMethod.POST)
	public String update(HttpServletRequest request,MultipartFile pro_photo) throws IOException {
		int pro_id =Integer.parseInt(request.getParameter("pro_id"));
		String pro_name =request.getParameter("pro_name");
		String pro_constant =request.getParameter("pro_constant");
		String old_photo =request.getParameter("old_photo");
		Product pro =new Product();
		String pro_upload_name;
		if(pro_photo==null){
			pro.setPro_photo(old_photo);
		}else {
			pro_upload_name = UploadInterface.upload_one(request, pro_photo);
			pro.setPro_photo(pro_upload_name);
		}
		pro.setPro_id(pro_id);
		pro.setPro_name(pro_name);
		pro.setPro_constant(pro_constant);
		pro.setPro_time(new Date());
		int count = prodao.update(pro);
		if(count ==1) {
			return "admin/product/product";
		}
		return null;
		
	}
	
	
	

}
