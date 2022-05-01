package com.sheena.time.managerPostNotice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.managerPostNotice.bo.ManagerPostNoticeBO;
import com.sheena.time.managerPostNotice.model.NoticeModel;

@Controller
@RequestMapping("/managerPost")
public class ManagerPostNoticeController {
	
	@Autowired
	private ManagerPostNoticeBO noticeBO;
	
	// 공지사항 리스트
	@GetMapping("/notice_view")
	public String noticeView(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		int managerId = (Integer)session.getAttribute("managerId");
		
		List<NoticeModel> managerPostNoticeList = noticeBO.getManagerPostNoticeList(managerId);
		
		model.addAttribute("managerPostNoticeList", managerPostNoticeList);
		
		return "managerPost/notice";
	}
	
	
	// 공지사항 작성
	@GetMapping("/notice/create_view")
	public String noticeCreateView() {
		return "managerPost/notice_create";
	}
	
	
	// 공지사항 수정
	@GetMapping("/notice/edit_view")
	public String noticeEditView(@RequestParam("id") int id, Model model) {
		
		NoticeModel notice = noticeBO.getManagerPostNotice(id);
		
		model.addAttribute("notice", notice);
		
		return "managerPost/notice_edit";
	}
	
}
