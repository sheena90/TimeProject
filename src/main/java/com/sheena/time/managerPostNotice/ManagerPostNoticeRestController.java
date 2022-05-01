package com.sheena.time.managerPostNotice;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.managerPostNotice.bo.ManagerPostNoticeBO;

@RestController
@RequestMapping("/managerPost/notice")
public class ManagerPostNoticeRestController {
	
	@Autowired
	private ManagerPostNoticeBO noticeBO;

	
	// 공지사항 작성
	@PostMapping("/create")
	public Map<String, String> noticeCreate (
			@RequestParam("subject") String subject,
			@RequestParam("content") String content,
			@RequestParam(value="file", required=false) MultipartFile file,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int managerId = (Integer)session.getAttribute("managerId");
		
		int count = noticeBO.addManagerPostNotice(managerId, subject, content, file);
		
		Map<String, String> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
}
