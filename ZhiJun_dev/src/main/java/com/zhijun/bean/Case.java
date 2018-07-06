package com.zhijun.bean;

import java.util.Date;
/**
 * 案成功例表
 * @author hpj
 * @version 2018年7月6日
 */
public class Case {
	private int case_id; //案例ID
	private String case_name; //案例名称
	private String case_constant; //案例描述
	private String case_photo; //案例照片
	private Date case_time; //案例时间
	public int getCase_id() {
		return case_id;
	}
	public void setCase_id(int case_id) {
		this.case_id = case_id;
	}
	public String getCase_name() {
		return case_name;
	}
	public void setCase_name(String case_name) {
		this.case_name = case_name;
	}
	public String getCase_constant() {
		return case_constant;
	}
	public void setCase_constant(String case_constant) {
		this.case_constant = case_constant;
	}
	public String getCase_photo() {
		return case_photo;
	}
	public void setCase_photo(String case_photo) {
		this.case_photo = case_photo;
	}
	public Date getCase_time() {
		return case_time;
	}
	public void setCase_time(Date case_time) {
		this.case_time = case_time;
	}
	
}
