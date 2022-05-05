package com.sheena.time.user.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.common.EncryptUtils;
import com.sheena.time.common.FileManagerService;
import com.sheena.time.post.model.VideoDetailModel;
import com.sheena.time.user.dao.UserDAO;
import com.sheena.time.user.model.PlanModel;
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
	
	
	
	// 프로필 업로드
	// 프로필 수정
	public String updateProfile(int userId, MultipartFile file, String nickname) {
		
		String profile = FileManagerService.saveFile(userId, file);
		
		userDAO.updateProfile(userId, profile, nickname);
		
		return profile;
	}
	
	
	// 프로필 삭제
	public int deleteProfile(int userId) {
		
		return userDAO.deleteProfile(userId);
	}
	
	
	
	// 즐겨찾기 리스트
	public List<VideoDetailModel> getFavoritesList(int userId) {
		return userDAO.selectFavoritesList(userId);
	}
	
	
	// 계획표 리스트
	public List<PlanModel> getPlanList(int userId) {
		return userDAO.selectPlanList(userId);
	}
	
	
	// Q&A 리스트
	public List<QuestionModel> getQuestionList(int userId) {
		return userDAO.selectQuestionList(userId);
	}
	
	// Q&A 디테일뷰
	public QuestionModel getQuestion(int id) {
		return userDAO.selectQuestion(id);
	}
	
	
	
	
	
}
