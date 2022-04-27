package com.sheena.time.managerPostVideo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.managerPostVideo.bo.ManagerPostVideoBO;
import com.sheena.time.managerPostVideo.model.VideoModel;

@Controller
@RequestMapping("/managerPost/content")
public class ManagerPostVideoController {
	
	@Autowired
	private ManagerPostVideoBO videoBO;
	
	// 운동영상 업로드
		@GetMapping("/video/create_view")
		public String contentVideoCreateView() {
			return "managerPost/content_video_create";
	}
	
	
	// 운동영상 리스트
	@GetMapping("/video_view")
	public String contentVideoView(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		int managerId = (Integer)session.getAttribute("managerId");
		
		List<VideoModel> managerPostVideoList = videoBO.getManagerPostContentVideoList(managerId);
		
		model.addAttribute("managerPostVideoList", managerPostVideoList);
		
		return "managerPost/content_video";
	}
	
	
	// 운동영상 수정
	@GetMapping("/video/edit_view")
	public String contentVideoEditView(@RequestParam("id") int id, Model model) {
		
		VideoModel video = videoBO.getManagerPostVideo(id);
		
		model.addAttribute("video", video);
		
		return "managerPost/content_video_edit";
	}

}
