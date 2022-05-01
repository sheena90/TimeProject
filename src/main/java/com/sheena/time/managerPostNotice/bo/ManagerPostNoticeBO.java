package com.sheena.time.managerPostNotice.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.common.FileManagerService;
import com.sheena.time.managerPostNotice.dao.ManagerPostNoticeDAO;
import com.sheena.time.managerPostNotice.model.NoticeModel;

@Service
public class ManagerPostNoticeBO {
	
	@Autowired
	private ManagerPostNoticeDAO noticeDAO;
	
	// 공지사항 리스트
	public List<NoticeModel> getManagerPostNoticeList(int managerId) {
		return noticeDAO.selectManagerPostNoticeList(managerId);
	}
	
	// 공지사항 작성
	public int addManagerPostNotice(int managerId, String subject, String content, MultipartFile file) {
		
		String imagePath = FileManagerService.saveFile(managerId, file);
		
		return noticeDAO.insertManagerPostNotice(managerId, subject, content, imagePath);
			
	}
	
	
	// 공지사항 수정
	public NoticeModel getManagerPostNotice(int id) {
		return noticeDAO.selectManagerPostNotice(id);
	}
}
