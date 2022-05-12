package com.sheena.time.managerPostQuestion.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.managerPostQuestion.dao.QuestionDAO;
import com.sheena.time.user.model.QuestionModel;

@Service
public class QuestionBO {
	
	@Autowired
	private QuestionDAO questionDAO;
	
	// 관리자 Q&A 리스트
	public List<QuestionModel> getQuestionList() {
		return questionDAO.selectQuestionList();
	}
	
	// 관리자 Q&A 디테일 화면
	public QuestionModel getquestion(int id) {
		return questionDAO.selectQuestion(id);
	}

}
