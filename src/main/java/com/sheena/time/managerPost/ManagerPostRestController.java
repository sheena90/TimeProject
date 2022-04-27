package com.sheena.time.managerPost;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.managerPost.bo.ManagerPostBO;


@RestController
@RequestMapping("/managerPost")
public class ManagerPostRestController {
	
	@Autowired
	private ManagerPostBO managerPostBO;

	@PostMapping("/content/info/create")
	public Map<String, String> InfoCreate (
			@RequestParam("subject") String subject,
			@RequestParam("content") String content,
			@RequestParam(value="file", required=false) MultipartFile file,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int managerId = (Integer)session.getAttribute("managerId");
		
		int count = managerPostBO.addManagerPost(managerId, subject, content, file);
		
		Map<String, String> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		return result;
	}
	
	
	// 운동영상
	@PostMapping("/content/video/create")
	public Map<String, String> videoCreate(
			@RequestParam("userGender") String userGender,
			@RequestParam("body") String body,
			@RequestParam("type") String type,
			@RequestParam("title") String title,
			@RequestParam("link") String link,
			@RequestParam("thumbnail") MultipartFile file,
			@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
			@RequestParam(value="timeline", required=false) Date timeline,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int managerId = (Integer)session.getAttribute("managerId");
		
		
		int count = managerPostBO.addManagerPostVideo(managerId, userGender, body, type, title, file, link, timeline);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
