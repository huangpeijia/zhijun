package com.zhijun.bean;
/**
 * 产品类型类
 * @author Administer
 *
 */
public class Protype { 
	private int protype_id; //产品类型id
	private String protype_name; //产品类型名称 
	private String protype_constant;//产品类型介绍
	private String protype_photo;//产品类型照片
	public String getProtype_photo() {
		return protype_photo;
	}
	public void setProtype_photo(String protype_photo) {
		this.protype_photo = protype_photo;
	}
	public String getProtype_constant() {
		return protype_constant;
	}
	public void setProtype_constant(String protype_constant) {
		this.protype_constant = protype_constant;
	}
	public int getProtype_id() {
		return protype_id;
	}
	public void setProtype_id(int protype_id) {
		this.protype_id = protype_id;
	}
	public String getProtype_name() {
		return protype_name;
	}
	public void setProtype_name(String protype_name) {
		this.protype_name = protype_name;
	}
}
