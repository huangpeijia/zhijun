package com.zhijun.dao;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import com.zhijun.bean.Document;

public class DocumentDao {
	//提供数据库访问操作类
		private JdbcTemplate jdbcTemplate;
		
		public JdbcTemplate getJdbcTemplate() {
			return jdbcTemplate;
		}
		public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
			this.jdbcTemplate = jdbcTemplate;
		}
		 
	/*
     * 函数名：getFile
     * 作用：使用递归，输出指定文件夹内的所有文件
     * 参数：path：文件夹路径   deep：表示文件的层次深度，控制前置空格的个数
     * 前置空格缩进，显示文件层次结构
     */
    public static List<Document> getFile(String path,int deep) throws IOException{
    	List<Document> list = new ArrayList<Document>();
    	// 获得指定文件对象  
        File file = new File(path);    
		//判断是否存在
		if (!file.exists()) {
//		创建父目录文件
			file.mkdirs();
		}
		file.createNewFile();
        // 获得该文件夹内的所有文件   
        File[] array = file.listFiles();
        for(int i=0;i<array.length;i++)
        {   
            if(array[i].isFile())//如果是文件
            {
            	Document docu=new Document();
            	// 文件名字  
//            	System.out.println( array[i].getName());
            	String name=array[i].getName();
            	// 输出当前文件的完整路径   
            	long time = array[i].lastModified();
            	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            	String res = sdf.format(time);
//            	System.out.println("时间：："+res);
            	//文件的大小
            	String num=array[i].length()+"";
//            	System.out.println("大小是：："+array[i].length());
            	// 同样输出当前文件的完整路径   大家可以去掉注释 测试一下   
//            	System.out.println(array[i].getPath());
            	docu.setName(name);
            	docu.setNum(num);
            	docu.setTime(res);
            	list.add(docu); 
            }
            else if(array[i].isDirectory())//如果是文件夹
            {  
            	System.out.println( array[i].getName());
            	//System.out.println(array[i].getPath());
            	//文件夹需要调用递归 ，深度+1
            	getFile(array[i].getPath(),deep+1);  
            }
        }
		return list;   
    }
    public static String getFilevideo(String path) throws IOException{
    	String video_name="";
    	// 获得指定文件对象  
        File file = new File(path);   
      //判断是否存在
      		if (!file.exists()) {
      			//创建父目录文件
      			file.mkdirs();
      		}
      		file.createNewFile();
        // 获得该文件夹内的所有文件   
        File[] array = file.listFiles();
        for(int i=0;i<array.length;i++)
        {   
            if(array[i].isFile())//如果是文件
            {
            	// 文件名字   
            	video_name=array[i].getName();
            	 
            } 
        }
		return video_name;   
    }
    public int countAll(String path) {
    	File file = new File(path);   
      // 获得该文件夹内的所有文件   
      File[] array = file.listFiles();   
      int count=0;
      for(int i=0;i<array.length;i++)
      {   
          if(array[i].isFile())//如果是文件
          {
        	count++;
          }
      }
		return count;
    	
    }
	public boolean deleteFile(String path_name) {
		// TODO Auto-generated method stub
		File file = new File(path_name);
        // 判断文件是否存在
        if (file.exists()) {
        	System.out.println("文件存在删除");
            // 文件删除
            file.delete();
            return true;
        }
		return false;
	}
}
