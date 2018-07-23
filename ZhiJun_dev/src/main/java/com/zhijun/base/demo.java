package com.zhijun.base;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class demo {
	public static void main(String[] args) {   
        //这是需要获取的文件夹路径  
        String path = "D:\\develop_eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ZhiJun_dev\\upload";   
//        getFile(path,0);
        deleteFile("D:\\develop_eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ZhiJun_dev\\upload/1532082238068.gif");
    }   

	private static void deleteFile(String path) {
		File file = new File(path);
        // 判断文件是否存在
        if (file.exists()) {
        	System.out.println("文件存在删除");
            // 文件删除
            file.delete();
        }
	}
    /*
     * 函数名：getFile
     * 作用：使用递归，输出指定文件夹内的所有文件
     * 参数：path：文件夹路径   deep：表示文件的层次深度，控制前置空格的个数
     * 前置空格缩进，显示文件层次结构
     */
    private static void getFile(String path,int deep){
        // 获得指定文件对象  
        File file = new File(path);   
        // 获得该文件夹内的所有文件   
        File[] array = file.listFiles();   

        for(int i=0;i<array.length;i++)
        {   
            if(array[i].isFile())//如果是文件
            {
                    	//输出前置空格
                        // 只输出文件名字  
                        System.out.println( array[i].getName());   
                        // 输出当前文件的完整路径   
//                       System.out.println("#####" + array[i]);
                        long time = array[i].lastModified();
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String res = sdf.format(time);
                       System.out.println("时间：："+res);
                       //文件的大小
                   	   System.out.println("大小是：："+array[i].length());
                        // 同样输出当前文件的完整路径   大家可以去掉注释 测试一下   
                        System.out.println(array[i].getPath());
                     
            }
            else if(array[i].isDirectory())//如果是文件夹
            {  
                    for (int j = 0; j < deep; j++)//输出前置空格
                    System.out.print(" ");

                    System.out.println( array[i].getName());
                    //System.out.println(array[i].getPath());
                    //文件夹需要调用递归 ，深度+1
                getFile(array[i].getPath(),deep+1);  
            }   
        }   
    }
}
