package com.sheena.time.managerPostVideo.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.managerPostVideo.dao.ManagerPostVideoDAO;
import com.sheena.time.managerPostVideo.model.VideoModel;

@Service
public class ManagerPostVideoBO {
	
	@Autowired
	private ManagerPostVideoDAO videoDAO;
	
	// 운동영상 리스트
	public List<VideoModel> getManagerPostContentVideoList(int managerId) {
		return videoDAO.selectManagerPostContentVideo(managerId);
	}

}
