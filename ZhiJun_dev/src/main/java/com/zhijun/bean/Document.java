package com.zhijun.bean;
/**
 * 文件管理
 * @author hpj
 * @version 2018年7月23日
 */
public class Document {
	private String name; //文件名
	private String time; //文件大小
	private String num;  //文件时间
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
}
