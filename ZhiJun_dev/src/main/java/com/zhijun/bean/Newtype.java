package com.zhijun.bean;

public class Newtype {
	private int id;
	private int newtype_id; //新闻id
	private String newtype_name; //新闻类型名
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
