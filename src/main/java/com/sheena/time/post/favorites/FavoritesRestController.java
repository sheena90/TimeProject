package com.sheena.time.post.favorites;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sheena.time.post.favorites.bo.FavoritesBO;

@RestController
public class FavoritesRestController {
	
	@Autowired
	private FavoritesBO favoritesBO;
	
	@GetMapping("/content/video/favorites")
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

}
