package com.sheena.time.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.post.model.PostModel;

@Repository
public interface PostDAO {

	// 커뮤니티_글쓰기
	public int insertPost(
			@Param("userId") int userId,
			@Param("subject") String subject, 
			@Param("content") String content);
	
	
	// 커뮤니티_리스트
	public List<PostModel> selectPostList(@Param("userId") int userId);
}
