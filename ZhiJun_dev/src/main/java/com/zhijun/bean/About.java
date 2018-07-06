package com.zhijun.bean;

import java.util.Date;
/**
 * 关于我们表
 * @author hpj
 * @version 2018年7月6日
 */
public class About {
	private int about_id; //ID
	private String about_profile; //公司介绍
	private String about_scope; //经营范围
	private String about_products; //主要产品
	private String about_culture; //公司文化
	private String about_prospects; //发展前景
	private Date about_time; //时间
	public int getAbout_id() {
		return about_id;
	}
	public void setAbout_id(int about_id) {
		this.about_id = about_id;
	}
	public String getAbout_profile() {
		return about_profile;
	}
	public void setAbout_profile(String about_profile) {
		this.about_profile = about_profile;
	}
	public String getAbout_scope() {
		return about_scope;
	}
	public void setAbout_scope(String about_scope) {
		this.about_scope = about_scope;
	}
	public String getAbout_products() {
		return about_products;
	}
	public void setAbout_products(String about_products) {
		this.about_products = about_products;
	}
	public String getAbout_culture() {
		return about_culture;
	}
	public void setAbout_culture(String about_culture) {
		this.about_culture = about_culture;
	}
	public String getAbout_prospects() {
		return about_prospects;
	}
	public void setAbout_prospects(String about_prospects) {
		this.about_prospects = about_prospects;
	}
	public Date getAbout_time() {
		return about_time;
	}
	public void setAbout_time(Date about_time) {
		this.about_time = about_time;
	}
}
