package com.zhijun.bean;

import java.util.Date;
/**
 * 投资表
 * @author hpj
 * @version 2018年7月6日
 */
public class Investor {
	private int in_id; //ID
	private String in_name; //投资者名称
	private String in_profile; //投资介绍
	private Date in_time; //t投资时间
	public int getIn_id() {
		return in_id;
	}
	public void setIn_id(int in_id) {
		this.in_id = in_id;
	}
	public String getIn_name() {
		return in_name;
	}
	public void setIn_name(String in_name) {
		this.in_name = in_name;
	}
	public String getIn_profile() {
		return in_profile;
	}
	public void setIn_profile(String in_profile) {
		this.in_profile = in_profile;
	}
	public Date getIn_time() {
		return in_time;
	}
	public void setIn_time(Date in_time) {
		this.in_time = in_time;
	}
}
