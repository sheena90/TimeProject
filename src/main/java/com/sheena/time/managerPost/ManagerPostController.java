package com.sheena.time.managerPost;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.managerPost.bo.ManagerPostBO;
import com.sheena.time.managerPost.model.ManagerPostModel;

@Controller
@RequestMapping("/managerPost")
public class ManagerPostController {
	
	@Autowired
	private ManagerPostBO managerPostBO;

	// 지식정보 리스트
	@GetMapping("/content/info_view")
	public String contentInfoView(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		int managerId = (Integer)session.getAttribute("managerId");
		
		List<ManagerPostModel> managerPostList = managerPostBO.getManagerPostList(managerId);
		
		model.addAttribute("managerPostList", managerPostList);
		
		return "managerPost/content_info";
	}
	
	// 지식정보 글쓰기
	@GetMapping("/content/info/create_view")
	public String contetnInfoCreateView() {
		return "managerPost/content_info_create";
	}
	
	
	@GetMapping("/content/info/edit_view")
	public String contentInfoEditView(@RequestParam("id") int id, Model model) {
		
		ManagerPostModel managerPost = managerPostBO.getManagerPost(id);
		
		model.addAttribute("managerPost", managerPost);
		
		return "managerPost/content_info_edit";
	}
	
	
}
