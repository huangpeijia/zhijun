package com.zhijun.bean;

import java.util.Date;
/**
 * 产品表
 * @author hpj
 * @version 2018年7月6日
 */
public class Product {
	private int pro_id; // 产品ID
	private String pro_name; //产品名称
	private String pro_constant; //产品介绍
	private String pro_photo; //产品照片
	private int pro_type; //产品类型
	private Date pro_time; //产品时间
	 
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_constant() {
		return pro_constant;
	}
	public void setPro_constant(String pro_constant) {
		this.pro_constant = pro_constant;
	}
	public String getPro_photo() {
		return pro_photo;
	}
	public void setPro_photo(String pro_photo) {
		this.pro_photo = pro_photo;
	}
	public Date getPro_time() {
		return pro_time;
	}
	public void setPro_time(Date pro_time) {
		this.pro_time = pro_time;
	}
	public int getPro_type() {
		return pro_type;
	}
	public void setPro_type(int pro_type) {
		this.pro_type = pro_type;
	}  
}
