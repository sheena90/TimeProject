package com.sheena.time.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.common.EncryptUtils;
import com.sheena.time.user.dao.UserDAO;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;

	// 회원가입
	public int addUser(
			String loginId,
			String password,
			String nickname,
			String gender,
			String email) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		if(encryptPassword == null || encryptPassword.equals("")) {
			return 0;
		}
		
		return userDAO.insertUser(loginId, encryptPassword, nickname, gender, email);
	}
	
	// 아이디 중복
	public boolean isDuplicateId(String loginId) {
		
		int count = userDAO.selectCountLoginId(loginId);
		
		return (count != 0);
		
	}
	
	
	
	
	
	
	
	
	
	
}
