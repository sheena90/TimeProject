package com.sheena.time.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@GetMapping("/signup_view")
	public String signupView() {
		return "manager/signUp";
	}
	
	@GetMapping("/signin_view")
	public String signinView() {
		return "manager/signIn";
	}
	
	@GetMapping("/sign_out")
	public String signOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("managerId");
		session.removeAttribute("managerLoginId");
		
		return "redirect:/manager/signin_view";
	}

}
