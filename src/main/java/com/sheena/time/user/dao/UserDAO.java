package com.sheena.time.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPostVideo.model.VideoModel;
import com.sheena.time.user.model.PlanModel;
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
	
	
	
	// 프로필 업로드	
	// 프로필 수정
	public int updateProfile(
			@Param("userId") int userId,
			@Param("profile") String profile,
			@Param("nickname") String nickname);
	
	
	
	// 프로필 삭제
	public int deleteProfile(
			@Param("userId") int userId);
	
	
	
	// 즐겨찾기 리스트
	public List<VideoModel> selectFavoritesList(@Param("userId") int userId);
	
	
	// 계획표 리스트
	public List<PlanModel> selectPlanList(@Param("userId") int userId);
	
	
	// Q&A 리스트
	public List<QuestionModel> selectQuestionList(@Param("userId") int userId);
	
	
	// Q&A 디테일뷰
	public QuestionModel selectQuestion(@Param("id") int id);
	
	
	
	// 회원탈퇴
	public int delete(@Param("userId") int userId);
	
	
}
