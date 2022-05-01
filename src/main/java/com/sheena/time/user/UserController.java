package com.sheena.time.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.user.bo.UserBO;
import com.sheena.time.user.model.QuestionModel;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserBO userBO;
	
	
	@GetMapping("/signup_view")
	public String signUpView() {
		return "user/signUp";
	}
	
	
	@GetMapping("/signin_view")
	public String signInView() {
		return "user/signIn";
	}
	
	
	@GetMapping("/sign_out")
	public String signOut(HttpServletRequest request) {
		
		// 로그아웃
		// session에 저장한 사용자 정보 지우기(userId, userLoginId, userNickname, userGender, userEmail, userProfile)
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userLoginId");
		session.removeAttribute("userNickname");
		session.removeAttribute("userGender");
		session.removeAttribute("userEmail");
		session.removeAttribute("userProfile");
		
		// responseBody가 아닌 어노테이션이기때문에 가능
		// 다시 메인페이지 페이지로 이동
		return "redirect:/post/main_view";
		
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
	
	// Q&A 리스트
	@GetMapping("/myQuestion_view")
	public String myQuestionView(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		List<QuestionModel> questionList = userBO.getQuestionList(userId);
		
		model.addAttribute("questionList", questionList);
		
		return "user/my_question";
	}
	
	
	// Q&A 디테일뷰
	@GetMapping("/myQuestion/detail_view")
	public String myQuestionDetailView(@RequestParam("id") int id, Model model) {
		
		QuestionModel question = userBO.getQuestion(id);
		
		model.addAttribute("question", question);
		
		return "user/my_question_detail";
	}
	
	
	// 회원탈퇴
	@GetMapping("/myWithdraw_view")
	public String myWithdrawView() {
		return "user/my_withdraw";
	}

}
