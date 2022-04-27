package com.sheena.time.managerPostVideo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPostVideo.model.VideoModel;

@Repository
public interface ManagerPostVideoDAO {

	// 운동영상 리스트
		public List<VideoModel> selectManagerPostContentVideo(@Param("managerId") int managerId);
		
	
}
