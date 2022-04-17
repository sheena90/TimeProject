package com.sheena.time.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

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
	
	
	
	
	
	
	
}
