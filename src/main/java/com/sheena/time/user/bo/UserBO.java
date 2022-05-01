package com.sheena.time.user.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.common.EncryptUtils;
import com.sheena.time.user.dao.UserDAO;
import com.sheena.time.user.model.QuestionModel;
import com.sheena.time.user.model.UserModel;

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
	
	
	// 로그인
	// 1.model을 통해서 유저 정보 모두 가져와야 함
	// 암호화 된 비교연산을 통해 해당 비밀번호가 암호화 된 비밀번호랑 같다는것을 표시해야 함
	public UserModel getUser(String loginId, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUser(loginId, encryptPassword);
	}
	
	
	
	// Q&A 리스트
	public List<QuestionModel> getQuestionList(int userId) {
		return userDAO.selectQuestionList(userId);
	}
	
	
	
	
	
}
