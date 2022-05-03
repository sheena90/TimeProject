package com.sheena.time.post.favorites;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sheena.time.post.favorites.bo.FavoritesBO;

@RestController
@RequestMapping("/content/video")
public class FavoritesRestController {
	
	@Autowired
	private FavoritesBO favoritesBO;
	
	@GetMapping("/favorites")
	public Map<String, String> favorites(
			@RequestParam("videoId") int videoId,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = favoritesBO.addFavorites(videoId, userId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
	// 즐겨찾기 취소
	@GetMapping("/unfavorites")
	public Map<String, String> unfavorites(
			@RequestParam("videoId") int videoId,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = favoritesBO.unfavorites(videoId, userId);
		
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
