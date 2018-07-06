package com.zhijun.bean;

import java.util.Date;
/**
 * 公司信息表
 * @author hpj
 * @version 2018年7月6日
 */
public class Information {
	private int com_id; //id
	private String com_name; //公司名称
	private String com_logo; //公司logo
	private String com_contact; //公司联系人
	private String com_number; //公司电话
	private String com_address; //公司地址
	private String com_code; //公司邮编
	private String com_fax; //公司传真
	private String com_email; //公司邮箱
	private String com_copyright; //版权所有
	private String com_profile; //公司介绍
	private Date com_time; //成立时间
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public String getCom_logo() {
		return com_logo;
	}
	public void setCom_logo(String com_logo) {
		this.com_logo = com_logo;
	}
	public String getCom_contact() {
		return com_contact;
	}
	public void setCom_contact(String com_contact) {
		this.com_contact = com_contact;
	}
	public String getCom_number() {
		return com_number;
	}
	public void setCom_number(String com_number) {
		this.com_number = com_number;
	}
	public String getCom_address() {
		return com_address;
	}
	public void setCom_address(String com_address) {
		this.com_address = com_address;
	}
	public String getCom_code() {
		return com_code;
	}
	public void setCom_code(String com_code) {
		this.com_code = com_code;
	}
	public String getCom_fax() {
		return com_fax;
	}
	public void setCom_fax(String com_fax) {
		this.com_fax = com_fax;
	}
	public String getCom_email() {
		return com_email;
	}
	public void setCom_email(String com_email) {
		this.com_email = com_email;
	}
	public String getCom_copyright() {
		return com_copyright;
	}
	public void setCom_copyright(String com_copyright) {
		this.com_copyright = com_copyright;
	}
	public String getCom_profile() {
		return com_profile;
	}
	public void setCom_profile(String com_profile) {
		this.com_profile = com_profile;
	}
	public Date getCom_time() {
		return com_time;
	}
	public void setCom_time(Date com_time) {
		this.com_time = com_time;
	}
}
