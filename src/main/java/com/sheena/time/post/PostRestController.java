package com.sheena.time.post;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.managerPostVideo.model.VideoModel;
import com.sheena.time.post.bo.PostBO;
import com.sheena.time.post.model.PostModel;

@RestController
@RequestMapping("/post")
public class PostRestController {
	
	@Autowired
	private PostBO postBO;
	
	
	// 메인 페이지 맞춤형 서비스 modal창 띄우기 
	@PostMapping("/service")
	public VideoModel service(
			@RequestParam("where") String where,
			@RequestParam("type") String type,
			@RequestParam("body") String body, 
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userGender = (String)session.getAttribute("userGender");
		
		VideoModel result = postBO.getservice(body, userGender);
		
		return result;
		
	}
	
	
	
	// 맞춤형 서비스 로그인일 때만 가능
	@PostMapping("/serviceCheck")
	public Map<String, String> serviceCheck(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Integer userId = (Integer)session.getAttribute("userId");
		
		Map<String, String> result = new HashMap<>();
		
		if(userId == null) {
			result.put("result", "close");
		} else {
			result.put("result", "open");
		}
		
		return result;
		
	}
	
	
	// 메인 페이지_맞춤형 서비스_계획표 추가
	@PostMapping("/service/plan")
	public Map<String, String> servicePlan(
			@RequestParam("videoId") int videoId,
			@RequestParam("title") String title,
			@RequestParam("thumbnail") String thumbnail,
			@RequestParam("link") String link,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = postBO.addServicePlan(userId, videoId, title, thumbnail, link);
		
		Map<String, String>result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
		
	}
	
	
	// Q&A 글쓰기
	@PostMapping("/question/create")
	public Map<String, String> questionCreate(
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("subject") String subject,
			@RequestParam("content") String content,
			@RequestParam(value = "answer",required = false) String answer,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = postBO.addQuestion(userId, name, email, subject, content, answer);
		
		Map<String, String>result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
	
	// 커뮤니티_글쓰기
	@PostMapping("/community/create")
	public Map<String, String> create(
			@RequestParam("subject") String subject,
			@RequestParam("content") String content,
			// 파일, 비필수 항목
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request) {
		
		// userId 호출
		HttpSession session = request.getSession();
		// Object로 리턴, downCasting 진행 시 객체타입 확인 필수
		int userId = (Integer)session.getAttribute("userId");
		String userNickname = (String)session.getAttribute("userNickname");
		
		int count = postBO.addPost(userId, userNickname, subject, content, file);
		
		Map<String, String>result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
	// 커뮤니티_게시글 상세페이지 modal창 띄우기
	@PostMapping("/community/detail")
	public PostModel communityDetail(@RequestParam("id") int id) {
		return postBO.postId(id);
	}
	
	
	// 커뮤니티_게시글 수정
	@PostMapping("/community/update")
	public Map<String, String> communityUpdate(
			@RequestParam("postId") int postId,
			@RequestParam("subject") String subject,
			@RequestParam("content") String content) {
		
		int count = postBO.communityUpdatePost(postId, subject, content);
		
		Map<String, String>result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
	// 커뮤니티_게시글 삭제
	@GetMapping("/community/delete")
	public Map<String, String> communityDelete(
			@RequestParam("postId") int postId, 
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = postBO.communityDeletePost(postId, userId);
		
		Map<String, String>result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
}
