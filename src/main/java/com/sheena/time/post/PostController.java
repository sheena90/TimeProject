package com.sheena.time.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.post.bo.PostBO;
import com.sheena.time.post.model.CommunityModel;
import com.sheena.time.post.model.PostModel;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;
	
	@GetMapping("/main_view")
	public String mainView() {
		return "post/mainPage";
	}
	
	
	// content_영상, 지식정보
	@GetMapping("/content/video_view")
	public String contentVideoView() {
		return "post/content_video";
	}
	
	
	@GetMapping("/content/info_view")
	public String contentInfoView() {
		return "post/content_info";
	}
	
	
	// 커뮤니티
	@GetMapping("/community/main_view")
	public String communityMainView(Model model) {
		
		// community_메인 화면 모든 사용자의 게시글 가져오기
		List<CommunityModel> postFullList = postBO.getPostFullList();
		
		model.addAttribute("postFullList", postFullList);
		
		return "post/community_main";
	}
	
	@GetMapping("/community/create_view")
	public String communityCreateView() {
		return "post/community_create";
	}
	
	
	// 커뮤니티 모든 사용자의 해당 게시글 디테일뷰 가져오기
	@GetMapping("/community/review_view")
	public String communityReview(@RequestParam("id") int id, Model model) {
		
		PostModel postFull = postBO.postId(id);
		
		model.addAttribute("postFull", postFull);
		
		return "post/community_review";
	}
	
	
	
	@GetMapping("/community/list_view")
	public String communityListView(
			HttpServletRequest request,
			Model model) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostModel> postList = postBO.getPostList(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/community_list";
	}
	
	
	@GetMapping("/live/play_view")
	public String livePlayView() {
		return "post/live_play";
	}
	
	
	// 공지사항
	@GetMapping("/notice_view")
	public String noticeView() {
		return "post/notice";
	}
	
}
