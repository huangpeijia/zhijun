package com.zhijun.bean;

import java.util.Date;
/**
 * 新闻表
 * @author hpj
 * @version 2018年7月6日
 */
public class News {
	private int news_id; //新闻ID
	private String news_title; //新闻标题
	private String news_constant; //新闻描述
	private int news_type;//新闻类型 0：公司  1：行业
	private Date news_time; //新闻时间
	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_constant() {
		return news_constant;
	}
	public void setNews_constant(String news_constant) {
		this.news_constant = news_constant;
	}
	public Date getNews_time() {
		return news_time;
	}
	public void setNews_time(Date news_time) {
		this.news_time = news_time;
	}
	public int getNews_type() {
		return news_type;
	}
	public void setNews_type(int news_type) {
		this.news_type = news_type;
	}
	 
}
