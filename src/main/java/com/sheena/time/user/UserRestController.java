package com.sheena.time.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sheena.time.user.bo.UserBO;
import com.sheena.time.user.model.UserModel;

@RestController
@RequestMapping("/user")
public class UserRestController {
	
	@Autowired
	private UserBO userBO;

	// 회원가입
	@PostMapping("/sign_up")
	public Map<String, String> signUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("nickname") String nickname,
			@RequestParam("gender") String gender,
			@RequestParam("email") String email) {
		
		int count = userBO.addUser(loginId, password, nickname, gender, email);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 아이디 중복확인
	@GetMapping("/duplicate_id")
	public Map<String, Boolean> duplicate_id(@RequestParam("loginId") String loginId) {
		
		boolean isDuplicate = userBO.isDuplicateId(loginId);
		Map<String, Boolean> result = new HashMap<>();
		
		result.put("is_duplicate", isDuplicate);
		
		return result;
		
	}
	
	// 로그인
	@PostMapping("/sigin_in")
	public Map<String, String> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		UserModel userModel = userBO.getUser(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(userModel != null) {
			//성공
			result.put("result", "success");
			
			// session 얻어오기
			HttpSession session = request.getSession();
			
			// 꼭 필요한 데이터만 저장, 이 프로젝트에서는 우선 모두 가져오기: id, loginId, nickname, gender, email, profile
			session.setAttribute("userId", userModel.getId());
			session.setAttribute("userLoginId", userModel.getLoginId());
			session.setAttribute("userNickname", userModel.getNickname());
			session.setAttribute("userGender", userModel.getGender());
			session.setAttribute("userEmail", userModel.getEmail());
			session.setAttribute("userProfile", userModel.getProfile());
			
			
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
