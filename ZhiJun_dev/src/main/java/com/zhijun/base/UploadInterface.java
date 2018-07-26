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
    //获取输出流
      OutputStream os=new FileOutputStream(realPath+newFileName);
    //获取输入流 CommonsMultipartFile 中可以直接得到文件的流
      InputStream is=upload_one.getInputStream();
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
		return newFileName;
	}
}
