package com.sheena.time.manager.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.manager.model.ManagerModel;

@Repository
public interface ManagerDAO {

	// 관리자가입
	public int insertManager(
			@Param("loginId") String loginId,
			@Param("password") String password);
	
	// 관리자 로그인
	public ManagerModel selectManager(
			@Param("loginId") String loginId,
			@Param("password") String password);
	
}
