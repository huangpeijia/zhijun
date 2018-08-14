package com.zhijun.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import com.zhijun.bean.Information;
import com.zhijun.dao.InformationDao;

/**
 * 公司信息
 * @author hpj
 * @version 2018年7月9日
 */
@Controller
public class InformationController extends ControllerBase{
	private static final Logger logger= LoggerFactory.getLogger(InformationController.class);
	
	@Autowired
	private InformationDao infdao;
	/**
	 * 跳转页面
	 * 方法
	 * @author hpj
	 * @version 2018年7月11日
	 */
	@RequestMapping("/admin/inf")
	public String about(HttpServletRequest request) {
		return "admin/Information/Information";
	}
	/**
	 * 查询全部
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping(value = "/admin/inf/all", produces = "application/json; charset-utf-8")
	@ResponseBody
	public List<Information> queryAll(Model model){
		List<Information> inf= infdao.queryAll();
		return inf;
	}
	/**
	 * 添加
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/inf/add")
	public String add(Information inf) throws ParseException{
		inf.setCom_time(new Date());
		int count = infdao.addInf(inf);
		if(count ==1) {
			return "admin/Information/Information";
		}
		return "error";
		
	}
	/**
	 * 删除
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping("/admin/inf/deleteById")
	public String deleteById(@RequestParam("com_id") int com_id) {
		int count = infdao.deleteInf(com_id);
		if(count == 1) {
			return "admin/Information/Information";
		}
		return "error";
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @version 2018年7月9日
	 */
	@RequestMapping(value = "/admin/inf/updateAbout")
	@ResponseBody
	public List<Information> updateInf(@RequestParam("com_id") int com_id,Model model){
		return infdao.query(com_id);
	}
	/**
	 * 修改
	 * 方法
	 * @version 2018年7月9日
	 * @throws ParseException 
	 */
	@RequestMapping(value="/admin/inf/update",method=RequestMethod.POST)
	public String update(HttpServletRequest request,MultipartFile pro_photo) throws IOException, ParseException{
		int com_id = Integer.parseInt(request.getParameter("com_id"));
		String com_name=request.getParameter("com_name");
		String old_photo=request.getParameter("old_photo");
		String com_contact= request.getParameter("com_contact");
		String com_number=request.getParameter("com_number");
		String com_address= request.getParameter("com_address");
		String com_code= request.getParameter("com_code");
		String com_fax= request.getParameter("com_fax");
		String com_email = request.getParameter("com_eamil");
		String com_copyright = request.getParameter("com_copyright");
		String com_profile= request.getParameter("com_profile");
		String com_backdrop = request.getParameter("com_backdrop");
		String com_time = request.getParameter("com_time");
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
	    Date com_date = sdf.parse(com_time);
		Information inf =new Information();
		String pro_upload_name;
		if(pro_photo==null){
			inf.setCom_logo(old_photo);
		}else {
			pro_upload_name = UploadInterface.upload_one(request, pro_photo);
			inf.setCom_logo(pro_upload_name);
		}
		inf.setCom_id(com_id);
		inf.setCom_name(com_name);
		inf.setCom_contact(com_contact);
		inf.setCom_number(com_number);
		inf.setCom_address(com_address);
		inf.setCom_code(com_code);
		inf.setCom_fax(com_fax);
		inf.setCom_email(com_email);
		inf.setCom_copyright(com_copyright);
		inf.setCom_profile(com_profile);
		inf.setCom_backdrop(com_backdrop);
		inf.setCom_time(com_date);
		int count = infdao.update(inf);
		if(count == 1) {
			return "admin/Information/Information";
		}
		return "error";
	}
	
	
}
