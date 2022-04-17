package com.sheena.time.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostController {
	
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
	public String communityMainView() {
		return "post/community_main";
	}
	
	@GetMapping("/community/create_view")
	public String communityCreateView() {
		return "post/community_create";
	}
	
	@GetMapping("/community/review_view")
	public String communityReview() {
		return "post/community_review";
	}
	
	@GetMapping("/community/list_view")
	public String communityListView() {
		return "post/community_list";
	}
	
	
	@GetMapping("/live/play_view")
	public String livePlayView() {
		return "post/live_play";
	}
	
}
