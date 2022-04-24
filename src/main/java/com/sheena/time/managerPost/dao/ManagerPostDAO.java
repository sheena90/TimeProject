package com.sheena.time.managerPost.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPost.model.ManagerPostModel;

@Repository
public interface ManagerPostDAO {

	public int insertManagerPost(
			@Param("managerId") int managerId,
			@Param("subject") String subject, 
			@Param("content") String content,
			@Param("filePath") String filePath);
	
	
	// 지식정보 리스트
	public List<ManagerPostModel> selectManagerPostList(@Param("managerId") int managerId);

	// 지식정보 수정페이지
	public ManagerPostModel selectManagerPost(@Param("id") int id);

}
