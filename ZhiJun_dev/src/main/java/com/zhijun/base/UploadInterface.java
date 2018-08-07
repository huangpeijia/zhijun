package com.zhijun.base;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class UploadInterface {
	public static String upload_one(HttpServletRequest request,MultipartFile upload_one) throws IOException {
		//工作空间路径
		String realPath = request.getSession().getServletContext().getRealPath(File.separator);
		 realPath=realPath+"/upload/";
		// 获得指定文件对象  
        File file = new File(realPath);   
      //判断是否存在
      		if (!file.exists()) {
      			//创建父目录文件
      			file.mkdirs();
      		}
      		file.createNewFile();
    //原始名称
      String originalFilename = upload_one.getOriginalFilename();
      //新的文件名称（1531988920850.jpg）
      String newFileName =new Date().getTime()+originalFilename.substring(originalFilename.lastIndexOf("."));
    // 添加文件
      String path=realPath+newFileName;
      File newFile=new File(path);
      //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
      upload_one.transferTo(newFile);
		return newFileName;
	}
}
