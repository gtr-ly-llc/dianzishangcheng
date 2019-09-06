package com.nt.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 过滤器 利用session验证登录
 * 
 * @author ly
 *
 */
public class RightFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession(true);
		//从session里取的用户名信息
		String login = (String) session.getAttribute("login");
		//判断如果没有取到用户信息,就跳转到登陆页面
		if ("1".equals(login)) {
			// 已经登陆,继续此次请求
			chain.doFilter(request, response);
		} else {
			// 跳转到登陆页面
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	public void destroy() {
	}
}