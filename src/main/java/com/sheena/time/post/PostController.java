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
	
	
	@GetMapping("/community/create_view")
	public String createView() {
		return "post/community_create";
	}
	

}
