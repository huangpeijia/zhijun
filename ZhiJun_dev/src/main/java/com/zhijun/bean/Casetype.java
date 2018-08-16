package com.zhijun.bean;

public class Casetype {
	private int id;
	private int casetype_id; //案例id
	private String casetype_name; //案例名称
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCasetype_id() {
		return casetype_id;
	}
	public void setCasetype_id(int casetype_id) {
		this.casetype_id = casetype_id;
	}
	public String getCasetype_name() {
		return casetype_name;
	}
	public void setCasetype_name(String casetype_name) {
		this.casetype_name = casetype_name;
	}
}
