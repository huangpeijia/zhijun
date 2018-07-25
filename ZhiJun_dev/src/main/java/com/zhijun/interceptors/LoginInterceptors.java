package com.zhijun.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zhijun.dao.LoginDao;

/**
 * 	SpringMVC 配置拦截器
 * @author administrator_2018
 * @date 2018年3月26日
 */
public class LoginInterceptors implements HandlerInterceptor {

	/**
	 * 自动注入登陆判断用户名和密码查询的类
	 */
	@Autowired
	private LoginDao logindao;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("======处理请求之前======");
		//获取请求的URL
		
		String url = request.getRequestURI();
		System.out.println("LoginInterceptors拦截路径为:"+url);
		//截取登陆信息
		String string = url.substring(url.lastIndexOf("/")+1);
		//声明一个session
		HttpSession session = request.getSession();
//		session.removeAttribute("vel");
		//回去session作用域中是否已有存在的值
		Object username = session.getAttribute("username");
		Object vel = session.getAttribute("vel");
		if(string.equals("login")) {
			/*System.out.println("经过这里");
			if(vel==null){
				System.out.println("经过这里，并且vel为空");
			}			
			if(vel!=null){
				System.out.println("vel不为空");
			}*/
			if(username != null) {
	 			session.removeAttribute("username");
			}
			return true;
		}else {
			//如果user已经登陆则username不会是空的，可以放行
			if(username != null) {
				//直接放行
				return true;
			}
			//登陆拦截
			if(string.equals("enter")) {
				//移除session作用域中的值
				session.removeAttribute("username");
				//回去request请求路径中的用户名和密码
				String name = request.getParameter("username");
				String pass = request.getParameter("userpassword");
				//查询用户名和密码是否正确
				boolean flag = logindao.loginsystem(name, pass);
				//如果用户名和密码存在则返回true，否则返回false
				if(flag) {
					//返回true，并且把用户名存入session作用域
					session.setAttribute("username", name);
					//放行
					return true;
				}
				else {
					/*session.setAttribute("vel", false);
					System.out.println(session.getAttribute("vel"));*/
					//查询不到用户名和密码
					System.out.println("用户登录密码错误，请重新登陆");
					//重定向index登陆界面
					request.getSession().setAttribute("vel","false");
					response.sendRedirect(request.getContextPath()+"/admin/login");
					//拦截
					return false;
				}
			}else {
				//除了登陆请求以外的所有路径
				System.out.println("用户还没登陆，请重新登陆2");
				//重定向index登陆界面
				response.sendRedirect(request.getContextPath()+"/admin/login");
				//拦截
				return false;
			}
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("========处理请求后，渲染页面前======");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("========视图渲染结束了，请求处理完毕====");
	}

}
