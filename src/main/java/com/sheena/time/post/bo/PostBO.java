package com.sheena.time.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.common.FileManagerService;
import com.sheena.time.post.dao.PostDAO;
import com.sheena.time.post.model.PostModel;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	// 커뮤니티_글쓰기
	public int addPost(int userId, String userNickname, String subject, String content, MultipartFile file) {
		
		// 파일 저장:FileManagerService.saveFile
		// 경로: String filePath
		String filePath = FileManagerService.saveFile(userId, file);
		
		return postDAO.insertPost(userId, userNickname, subject, content, filePath);
	}
	
	
	// 커뮤니티_리스트
	public List<PostModel> getPostList(int userId) {
		return postDAO.selectPostList(userId);
	}
	
	
	// 커뮤니티_게시글 상세페이지 modal창 띄우기
	public PostModel postId(int id) {
		return postDAO.selectId(id);
	}
}
