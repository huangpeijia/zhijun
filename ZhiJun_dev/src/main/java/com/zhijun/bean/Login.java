package com.zhijun.bean;

public class Login {
	private static final long serialVersionUID = 1L;

	private int id;
	
	private String username;
	
	private String userpassword;

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
