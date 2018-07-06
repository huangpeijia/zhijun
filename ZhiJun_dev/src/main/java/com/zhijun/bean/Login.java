package com.zhijun.bean;
/**
 * 用户表
 * @author hpj
 * @version 2018年7月6日
 */
public class Login {
	private static final long serialVersionUID = 1L;

	private int id; //ID
	
	private String username; //登陆名称
	
	private String userpassword; //登陆密码

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	} 

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
