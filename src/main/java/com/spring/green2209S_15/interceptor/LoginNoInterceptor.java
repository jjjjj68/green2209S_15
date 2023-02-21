package com.spring.green2209S_15.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginNoInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null? 99 : (Integer) session.getAttribute("sLevel");
		
		if(level > 3) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/msg/loginGo");
			dispatcher.forward(request, response);
			return false;
		}
		
		return true;
	}
}
