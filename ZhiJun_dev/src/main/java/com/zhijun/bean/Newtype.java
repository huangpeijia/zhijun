package com.zhijun.bean;

public class Newtype { 
	private int newtype_id; //新闻id
	private String newtype_name; //新闻类型名 
	private String newtype_constant;//新闻介绍
	public String getNewtype_constant() {
		return newtype_constant;
	}
	public void setNewtype_constant(String newtype_constant) {
		this.newtype_constant = newtype_constant;
	}
	public int getNewtype_id() {
		return newtype_id;
	}
	public void setNewtype_id(int newtype_id) {
		this.newtype_id = newtype_id;
	}
	public String getNewtype_name() {
		return newtype_name;
	}
	public void setNewtype_name(String newtype_name) {
		this.newtype_name = newtype_name;
	}
}
