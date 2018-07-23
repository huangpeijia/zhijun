package com.zhijun.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
import com.zhijun.bean.Document;
import com.zhijun.dao.DocumentDao;

@Controller
public class DocumentController {
	
	@Autowired
	private DocumentDao docudao;
	
	@RequestMapping(value="/admin/document")
	public String docement() {
		return "admin/document/document";
		
	}
	
	/**
	 * 查询文件夹下的照片
	 * 方法
	 * @author hpj
	 * @version 2018年7月23日
	 */
	@RequestMapping(value="/admin/document/all")
	@ResponseBody
	public List<Document> documentAll(HttpServletRequest request) {
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		realPath = realPath+"/upload/"; //原路径
		List<Document> list =docudao.getFile(realPath,0);
		return list;
	}
	/**
	 * 删除文件夹下的照片
	 * 方法
	 * @author hpj
	 * @version 2018年7月23日
	 */
	@RequestMapping(value="/admin/document/delete_name")
	public String deleteFile(HttpServletRequest request) {
		String path_name =request.getParameter("path_name");
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		realPath = realPath+"/upload/"; //原路径
		
		System.out.println(realPath+path_name);
		boolean bool = docudao.deleteFile(realPath+path_name);
		System.out.println(bool);
		if(bool){
			return "admin/document/all";
		}else {
			return "error";
		}
		
	}
	
}
