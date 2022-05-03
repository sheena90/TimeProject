package com.sheena.time.post.like;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sheena.time.post.like.bo.LikeBO;

@RestController
@RequestMapping("/content/video")
public class LikeRestController {
	
	@Autowired
	private LikeBO likeBO;
	
	// 좋아요
	@GetMapping("/like")
	public Map<String, String> like(
			@RequestParam("videoId") int videoId,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = likeBO.addLike(videoId, userId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
		
	}
	
	
	// 좋아요 취소
	@GetMapping("/unlike")
	public Map<String, String> unlike(
			@RequestParam("videoId") int videoId,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		
		int count = likeBO.unlike(videoId, userId);
		
		Map<String, String> result = new HashMap<>();
		
		// 삭제가 안된 상태
		if(count == 0) {
			result.put("result", "fail");
		} else {
			result.put("result", "success");
		}
		
		return result;
	}
	

}
