package com.sheena.time.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PermissionInterceptor implements HandlerInterceptor {

	// 요청이 들어올 때
	@Override
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler) throws IOException {
		
		// 로그인 여부 확인
		HttpSession session = request.getSession();
		Integer userId = (Integer)session.getAttribute("userId");
		
		// /post/community_view와 같은 형식
		String uri = request.getRequestURI();
		
		// 로그인이 안 된 상태:
		if(userId == null) {
			// 커뮤니티 부분 이동 불가, 즉 /post/community
			// My페이지 이동 불가, 즉 /user
			
			if(uri.startsWith("/post/community")) {
				response.sendRedirect("/user/signin_view");
				return false;
			}
			
			if(uri.equals("/user/myProfile_view")) {
				response.sendRedirect("/user/signin_view");
				return false;				
			}
			
			if(uri.equals("/user/myFavorites_view")) {
				response.sendRedirect("/user/signin_view");
				return false;				
			}
			
			if(uri.equals("/user/myPlan_view")) {
				response.sendRedirect("/user/signin_view");
				return false;				
			}
			
			if(uri.equals("/user/myQuestion_view")) {
				response.sendRedirect("/user/signin_view");
				return false;				
			}
			
			if(uri.equals("/user/myNotifications_view")) {
				response.sendRedirect("/user/signin_view");
				return false;				
			}
			
			if(uri.equals("/user/myWithdraw_view")) {
				response.sendRedirect("/user/signin_view");
				return false;				
			}
			
			
		} else {
			// 로그인 상태일 때:
			
			// 로그인 화면 접근 불가
			if(uri.equals("/user/signin_view")) {
				// 메인 페이지 이동
				response.sendRedirect("/post/main_view");
				return false;				
			}
			
			// 회원가입 접근 불가
			if(uri.equals("/user/signup_view")) {
				response.sendRedirect("/post/main_view");
				return false;				
			}
			
		}
		
		return true;
		
	}
	
	
	// 처리가 끝나고 response 돌아갈 때
	@Override
	public void postHandle(
			HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler,
			ModelAndView modelAndView) {
		
	}
	
	
	@Override
	public void afterCompletion(
			HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler,
			Exception ex) {
		
	}
}
