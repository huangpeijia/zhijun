package com.zhijun.bean;

import java.util.Date;
/**
 * 资质表
 * @author hpj
 * @version 2018年7月6日
 */
public class Qualification {
	private int qua_id; //资质ID
	private String qua_name; //资质名称
	private String qua_photo; //资质照片 
	private String qua_constant; //资质描述
	private Date qua_time; //资质时间
	private int qua_type; //资质类型 
	public int getQua_type() {
		return qua_type;
	}
	public void setQua_type(int qua_type) {
		this.qua_type = qua_type;
	}
	public int getQua_id() {
		return qua_id;
	}
	public void setQua_id(int qua_id) {
		this.qua_id = qua_id;
	}
	public String getQua_name() {
		return qua_name;
	}
	public void setQua_name(String qua_name) {
		this.qua_name = qua_name;
	}
	public String getQua_photo() {
		return qua_photo;
	}
	public void setQua_photo(String qua_photo) {
		this.qua_photo = qua_photo;
	}
	public String getQua_constant() {
		return qua_constant;
	}
	public void setQua_constant(String qua_constant) {
		this.qua_constant = qua_constant;
	}
	public Date getQua_time() {
		return qua_time;
	}
	public void setQua_time(Date qua_time) {
		this.qua_time = qua_time;
	}
}
