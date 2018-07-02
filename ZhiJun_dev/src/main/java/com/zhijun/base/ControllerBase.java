package com.zhijun.base;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class ControllerBase implements ApplicationContextAware{
	private static final Logger logger = LoggerFactory.getLogger(ControllerBase.class);
	/**
	 * Sring应用上下文
	 */
	protected  ApplicationContext applicationContext;
	
	/**
	 * 实现ApplicationContextAware接口，必须实现该方法；
	 * 通过传递applicationContext参数初始化成员变了applicationContext
	 */
	@Override
	public void setApplicationContext(ApplicationContext context) throws BeansException {
		// TODO Auto-generated method stub
		this.applicationContext = context;
	}

}
