package com.sheena.time.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/signup_view")
	public String signUpView() {
		return "user/signUp";
	}
	
	
	// My페이지
	// 회원정보
	@GetMapping("/myProfile_view")
	public String myProfileView() {
		return "user/my_profile";
	}
	
	// 즐겨찾기
	@GetMapping("/myFavorites_view")
	public String myFavoritesView() {
		return "user/my_favorites";
	}
	
	// 계획표
	@GetMapping("/myPlan_view")
	public String myPlanView() {
		return "user/my_plan";
	}
	
	// Q&A
	@GetMapping("/myQuestion_view")
	public String myQuestionView() {
		return "user/my_question";
	}
	
	// 알림설정
	@GetMapping("/myNotice_view")
	public String myNoticeView() {
		return "user/my_notice";
	}
	
	// 회원탈퇴
	@GetMapping("/myWithdraw_view")
	public String myWithdrawView() {
		return "user/my_withdraw";
	}

}
