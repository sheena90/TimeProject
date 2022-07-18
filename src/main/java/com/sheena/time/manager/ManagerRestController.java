package com.sheena.time.manager;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sheena.time.manager.bo.ManagerBO;
import com.sheena.time.manager.model.ManagerModel;

@RestController
@RequestMapping("/timeManager")
public class ManagerRestController {

	@Autowired
	private ManagerBO managerBO;
	
	@PostMapping("/sign_up")
	public Map<String, String> signUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password) {
		
		int count = managerBO.addManager(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		return result;
	}
	
	
	@PostMapping("/sign_in")
	public Map<String, String> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		
		
		ManagerModel managerModel = managerBO.getManager(loginId, password);
		Map<String, String> result = new HashMap<>();
		
		if(managerModel != null) {
			result.put("result","success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("managerId", managerModel.getId());
			session.setAttribute("managerLoginId", managerModel.getLoginId());
		} else {
			result.put("result","fail");
		}
		
		return result;
	}
	
}
