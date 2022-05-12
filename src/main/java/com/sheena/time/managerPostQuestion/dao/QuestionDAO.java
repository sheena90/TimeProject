package com.sheena.time.managerPostQuestion.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.user.model.QuestionModel;

@Repository
public interface QuestionDAO {

	// 관리자 Q&A 리스트
	public List<QuestionModel> selectQuestionList();
	
	
	// 관리자 Q&A 디테일 화면
	public QuestionModel selectQuestion(@Param("id") int id);
}
