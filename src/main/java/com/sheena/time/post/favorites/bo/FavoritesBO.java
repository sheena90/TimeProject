package com.sheena.time.post.favorites.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.post.favorites.dao.FavoritesDAO;

@Service
public class FavoritesBO {
	
	@Autowired
	private FavoritesDAO favoritesDAO;
	
	public int addFavorites(int videoId, int userId) {
		
		return favoritesDAO.insertFavorites(videoId, userId);
	}
	
	// 즐겨찾기 보여주기
	public boolean isFavorites(int videoId, int userId) {
		
		int count = favoritesDAO.selectFavorites(videoId, userId);
		
		// 조회된 결과가 0이 아니면 true, 즉 즐겨찾기 함
		return (count != 0);
	}
	
	
	// 즐겨찾기 취소
	public int unfavorites(int videoId, int userId) {
		return favoritesDAO.deleteFavorites(videoId, userId);
	}
	

}
