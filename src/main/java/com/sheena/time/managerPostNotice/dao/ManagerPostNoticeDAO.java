package com.sheena.time.managerPostNotice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPostNotice.model.NoticeModel;

@Repository
public interface ManagerPostNoticeDAO {

	// 공지사항 리스트
	public List<NoticeModel> selectManagerPostNoticeList(@Param("managerId") int managerId);


	// 공지사항 작성
	public int insertManagerPostNotice(
			@Param("managerId") int managerId,
			@Param("subject") String subject,
			@Param("content") String content,
			@Param("imagePath") String imagePath);
	
	
	// 공지사항 수정
	public NoticeModel selectManagerPostNotice(@Param("id") int id);
}
