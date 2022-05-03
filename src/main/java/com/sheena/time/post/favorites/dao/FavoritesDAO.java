package com.sheena.time.post.favorites.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FavoritesDAO {
	
	public int insertFavorites(
			@Param("videoId")int videoId,
			@Param("userId") int userId);
	
	
	// 즐겨찾기 보여주기(int형태 인 이유는, 즐겨찾기를 했는지 안했는지, 했으면0, 안했으면1)
	public int selectFavorites(
			@Param("videoId")int videoId,
			@Param("userId") int userId);
	
	
	// 즐겨찾기 취소
	public int deleteFavorites(
			@Param("videoId")int videoId,
			@Param("userId") int userId);

}
