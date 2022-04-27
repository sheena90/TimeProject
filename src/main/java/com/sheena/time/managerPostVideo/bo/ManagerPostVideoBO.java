package com.sheena.time.managerPostVideo.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.common.FileManagerService;
import com.sheena.time.managerPostVideo.dao.ManagerPostVideoDAO;
import com.sheena.time.managerPostVideo.model.VideoModel;

@Service
public class ManagerPostVideoBO {
	
	@Autowired
	private ManagerPostVideoDAO videoDAO;
	
	
	// 운동영상 업로드
	public int addManagerPostVideo(int managerId, String userGender, String body, String type, String title, MultipartFile file, String link, Date timeline) {
		
		String thumbnail = FileManagerService.saveFile(managerId, file);
		
		return videoDAO.insertManagerPostVideo(managerId, userGender, body, type, title, thumbnail, link, timeline);
		
	}
	
	
	// 운동영상 리스트
	public List<VideoModel> getManagerPostContentVideoList(int managerId) {
		return videoDAO.selectManagerPostContentVideo(managerId);
	}
	
	
	

}
