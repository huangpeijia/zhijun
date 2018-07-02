package com.zhijun.interceptors;


import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
public class LogInterceptor {
	private final Logger logger = LoggerFactory.getLogger(LogInterceptor.class);

	public void before(JoinPoint joinPoint) {
		ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		HttpServletRequest request = attributes.getRequest();
		logger.info("login start!");
		logger.info("URL:"+request.getRequestURI());
		logger.info("HTTP_METHOD:"+request.getMethod());
		logger.info("IP:"+request.getRemoteAddr());
		logger.info("CLASS_METHOD:"+joinPoint.getSignature().getDeclaringTypeName()+"."+joinPoint.getSignature().getName());
		logger.info("ARGS:"+Arrays.toString(joinPoint.getArgs()));
	}
	
	public void after(JoinPoint joinPoint) {
		logger.info("login end!");
	}
}
