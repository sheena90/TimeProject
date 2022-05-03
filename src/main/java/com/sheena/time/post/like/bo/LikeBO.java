package com.sheena.time.post.like.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.post.like.dao.LikeDAO;

@Service
public class LikeBO {
	
	@Autowired
	private LikeDAO likeDAO;

	// 좋아요
	public int addLike(int videoId, int userId) {
		return likeDAO.insertLike(videoId, userId);
	}
	
	
	// videoId 기반으로 좋아요 개수 가져오기
	public int getLikeCount(int videoId) {
		return likeDAO.selectLikeCount(videoId);
	}
	
	
	// 좋아요 보여주기
	public boolean isLike(int videoId, int userId) {
		
		int count = likeDAO.selectLike(videoId, userId);
		
		return (count != 0);
		
	}
	
	
	// 좋아요 취소
	public int unlike(int videoId, int userId) {
		return likeDAO.deleteLike(videoId, userId);
	}
}
