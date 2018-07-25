package com.zhijun.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
	
	@ResponseBody
    @RequestMapping("admin/editFile/upload")
    public Map<String,Object> upload(HttpServletRequest request,@RequestParam("file") MultipartFile file) throws Exception {
       System.out.println(file.getOriginalFilename());  
       String realPath = request.getSession().getServletContext().getRealPath(File.separator);
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        //服务器上使用
       // String rootPath =request.getServletContext().getRealPath("/resource/uploads/");//target的目录
        //本地使用
        String rootPath =realPath+"upload";
        //原始名称
        String originalFilename = file.getOriginalFilename();
        //新的文件名称
        String newFileName = res+originalFilename.substring(originalFilename.lastIndexOf("."));
        //创建年月文件夹
        
        //新文件
        File newFile = new File(rootPath+File.separator+newFileName);
        //判断目标文件所在的目录是否存在
        if(!newFile.getParentFile().exists()) {
            //如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        //将内存中的数据写入磁盘
        file.transferTo(newFile);
        //完整的url
        String fileUrl =newFileName;
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("data", "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/upload/"+fileUrl);
        System.out.println(map);
        return map;
    }
	
	
	@RequestMapping(value="input/upload", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> uploadFile(HttpServletRequest request,
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
	        String newFileName ="2"+originalFilename.substring(originalFilename.lastIndexOf("."));
	      //获取输出流
	        OutputStream os=new FileOutputStream(realPath+"/upload/"+newFileName);
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

	/**
	 * 文件普通上传
	 * 方法
	 * @author hpj
	 * @version 2018年7月17日
	 */
	@RequestMapping("/uploadImg")
	public String uploadPhoto(@RequestParam(value="file",required=false)MultipartFile files,HttpServletRequest request) throws IOException{
	    //工作空间路径
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		//用来检测程序运行时间
        long  startTime=System.currentTimeMillis();
      //原始名称
        String originalFilename = files.getOriginalFilename();
        //新的文件名称（1531988920850.jpg）
        String newFileName =new Date().getTime()+originalFilename.substring(originalFilename.lastIndexOf("."));
      //获取输出流
        OutputStream os=new FileOutputStream(realPath+"/upload/"+newFileName);
      //获取输入流 CommonsMultipartFile 中可以直接得到文件的流
        InputStream is=files.getInputStream();
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
        return "/index";
    }
}
