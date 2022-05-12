package com.sheena.time.managerPostQuestion;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.managerPostQuestion.bo.QuestionBO;
import com.sheena.time.user.model.QuestionModel;

@Controller
@RequestMapping("/managerPost")
public class ManagerPostQuestionController {
	
	@Autowired
	private QuestionBO questionBO;

	// 관리자 Q&A 리스트
	@GetMapping("/question_view")
	public String questionView(Model model) {
		List<QuestionModel> questionList = questionBO.getQuestionList();
		
		model.addAttribute("questionList", questionList);
		
		return "managerPost/question";
	}
	
	// 관리자 Q&A 디테일 화면
	@GetMapping("/question/detail_view")
	public String questionDetailView(@RequestParam("id") int id, Model model) {
		
		QuestionModel questionDetail = questionBO.getquestion(id);
		
		model.addAttribute("questionDetail", questionDetail);
		
		return "managerPost/question_detail";
	}
}
