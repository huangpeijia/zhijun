package com.zhijun.bean;

public class Casetype { 
	private int casetype_id; //案例id
	private String casetype_name; //案例名称 
	private String casetype_constant;//案例介绍
	public String getCasetype_constant() {
		return casetype_constant;
	}
	public void setCasetype_constant(String casetype_constant) {
		this.casetype_constant = casetype_constant;
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
