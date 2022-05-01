package com.sheena.time.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.user.model.QuestionModel;
import com.sheena.time.user.model.UserModel;

@Repository
public interface UserDAO {

	//회원가입
	public int insertUser(
			@Param("loginId") String loginId,
			@Param("password") String password,
			@Param("nickname") String nickname,
			@Param("gender") String gendere,
			@Param("email") String email);
	
	// 중복확인
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	
	// 로그인
	public UserModel selectUser(
			@Param("loginId") String loginId,
			@Param("password") String password);
	
	
	// Q&A 리스트
	public List<QuestionModel> selectQuestionList(@Param("userId") int userId);
	
	
	
	
}
