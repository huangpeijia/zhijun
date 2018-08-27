package com.zhijun.bean;

import java.util.Date;
/**
 * 职位表
 * @author hpj
 * @version 2018年7月6日
 */
public class Recruitment {
	private int rec_id; //职位ID
	private String rec_name; //职位名称
	private String rec_num; //职位人数 
	private String rec_address; //工作地点
	private String rec_claim; //招聘要求
	private String rec_salary; //招聘薪资
	private Date rec_time; //招聘时间
	private int rec_type; // 招聘类型
	public int getRec_type() {
		return rec_type;
	}
	public void setRec_type(int rec_type) {
		this.rec_type = rec_type;
	}
	public int getRec_id() {
		return rec_id;
	}
	public void setRec_id(int rec_id) {
		this.rec_id = rec_id;
	}
	public String getRec_name() {
		return rec_name;
	}
	public void setRec_name(String rec_name) {
		this.rec_name = rec_name;
	}
	public String getRec_num() {
		return rec_num;
	}
	public void setRec_num(String rec_num) {
		this.rec_num = rec_num;
	}
	public String getRec_address() {
		return rec_address;
	}
	public void setRec_address(String rec_address) {
		this.rec_address = rec_address;
	}
	public String getRec_claim() {
		return rec_claim;
	}
	public void setRec_claim(String rec_claim) {
		this.rec_claim = rec_claim;
	}
	public String getRec_salary() {
		return rec_salary;
	}
	public void setRec_salary(String rec_salary) {
		this.rec_salary = rec_salary;
	}
	public Date getRec_time() {
		return rec_time;
	}
	public void setRec_time(Date rec_time) {
		this.rec_time = rec_time;
	}
}
