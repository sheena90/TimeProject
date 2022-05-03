package com.sheena.time.post.like.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LikeDAO {
	
	// 좋아요
	public int insertLike(
			@Param("videoId")int videoId,
			@Param("userId") int userId);

	
	// videoId 기반으로 좋아요 개수 가져오기
	public int selectLikeCount(@Param("videoId") int videoId);
	
	// 좋아요 보여주기
	public int selectLike(
			@Param("videoId")int videoId,
			@Param("userId") int userId);
	
	
	// 좋아요 취소
	public int deleteLike(
			@Param("videoId")int videoId,
			@Param("userId") int userId);
}
