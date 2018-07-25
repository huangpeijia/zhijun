package com.zhijun.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	@RequestMapping(value="/admin/document/count")
	@ResponseBody
	public int countAll(HttpServletRequest request) {
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		realPath = realPath+"/upload/"; //原路径
		int count =docudao.countAll(realPath);
		return count;
		
	}
	/** 
	 * 删除文件夹下的照片
	 * 方法
	 * @author hpj
	 * @version 2018年7月23日
	 */
	@RequestMapping(value="/admin/document/delete_name")
	@ResponseBody
	public String deleteFile(HttpServletRequest request) {
		String path_name =request.getParameter("path_name");
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		realPath = realPath+"/upload/"; //原路径
		
		System.out.println("-----------------"+realPath+path_name);
		boolean bool = docudao.deleteFile(realPath+path_name);
		System.out.println(bool);
		if(bool){
			return "admin/document/all";
		}else {
			return "error";
		}
		
	}
	@RequestMapping(value="admin/document/select_video", method=RequestMethod.POST)
	@ResponseBody
	public String select_video(HttpServletRequest request) {
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		realPath = realPath+"/video/"; //原路径
		String  video_name = docudao.getFilevideo(realPath);
		return video_name;
		
	}
	/**
	 * 添加视频
	 * 方法
	 * @author hpj
	 * @version 2018年7月25日
	 */
	@RequestMapping(value="admin/document/video", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> adminuploadFile(HttpServletRequest request,
			  MultipartFile uploadFile) throws IOException{
		if(uploadFile==null) {
			 System.out.println("wwwwwwwwww");
		}else {
			  //工作空间路径
			String realPath = request.getSession().getServletContext().getRealPath(File.separator);
			//用来检测程序运行时间
	        long  startTime=System.currentTimeMillis();
	      //原始名称
	        String originalFilename = uploadFile.getOriginalFilename();
	        //新的文件名称（1531988920850.jpg）
	        String newFileName ="index"+originalFilename.substring(originalFilename.lastIndexOf("."));
	      //获取输出流
	        OutputStream os=new FileOutputStream(realPath+"/video/"+newFileName);
	      //获取输入流 CommonsMultipartFile 中可以直接得到文件的流
	        InputStream is=uploadFile.getInputStream();
	        try { 
	            int temp;
	            //一个一个字节的读取并写入
	            while((temp=is.read())!=(-1))
	            {
	                os.write(temp);
	            }
	        } catch (FileNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }finally {
	        	os.flush();
	            os.close();
	            is.close();
	        }
		}
		String input_te=request.getParameter("input_te");
		String selectedId = request.getParameter("selectedId");
		Map<String,  Object> resultMap = new HashMap<String,Object>();
		System.out.println(input_te+"-----------------"+selectedId+"+++++++++++++"+uploadFile);
		return resultMap;
	}
}
