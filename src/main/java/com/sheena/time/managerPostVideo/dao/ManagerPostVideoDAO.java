package com.sheena.time.managerPostVideo.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPostVideo.model.VideoModel;

@Repository
public interface ManagerPostVideoDAO {
	
	// 운동영상 업로드
	public int insertManagerPostVideo(
			@Param("managerId") int managerId,
			@Param("userGender") String userGender,
			@Param("body") String body,
			@Param("type") String type,
			@Param("title") String title,
			@Param("thumbnail")String thumbnail,
			@Param("link") String link,
			@Param("timeline") Date timeline);
	
	
	

	// 운동영상 리스트
		public List<VideoModel> selectManagerPostContentVideo(@Param("managerId") int managerId);
		
	
}
