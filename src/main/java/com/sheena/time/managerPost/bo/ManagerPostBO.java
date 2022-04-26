package com.sheena.time.managerPost.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.common.FileManagerService;
import com.sheena.time.managerPost.dao.ManagerPostDAO;
import com.sheena.time.managerPost.model.ManagerPostModel;


@Service
public class ManagerPostBO {

	@Autowired
	private ManagerPostDAO managerPostDAO;
	
	public int addManagerPost(int managerId, String subject, String content, MultipartFile file) {
		
		String filePath = FileManagerService.saveFile(managerId, file);
		
		return managerPostDAO.insertManagerPost(managerId, subject, content, filePath);
	}
	
	
	// 지식정보 리스트
	public List<ManagerPostModel> getManagerPostList(int managerId) {
		return managerPostDAO.selectManagerPostList(managerId);
	}
	
	
	// 지식정보 수정페이지
	public ManagerPostModel getManagerPost(int id) {
		return managerPostDAO.selectManagerPost(id);
	}
	
	
	// 운동영상 업로드
	public int addManagerPostVideo(int managerId, String userGender, String body, String type, String title, MultipartFile file, String link, Date timeline) {
		
		String thumbnail = FileManagerService.saveFile(managerId, file);
		
		return managerPostDAO.insertManagerPostVideo(managerId, userGender, body, type, title, thumbnail, link, timeline);
		
	}
}

