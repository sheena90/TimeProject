package com.sheena.time.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.post.dao.PostDAO;
import com.sheena.time.post.model.PostModel;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	// 커뮤니티_글쓰기
	public int addPost(int userId, String subject, String content) {
		
		return postDAO.insertPost(userId, subject, content);
	}
	
	
	// 커뮤니티_리스트
	public List<PostModel> getPostList(int userId) {
		return postDAO.selectPostList(userId);
	}
}