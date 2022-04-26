package com.sheena.time.post.comment.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.post.comment.dao.CommentDAO;

@Service
public class CommentBO {

	@Autowired
	private CommentDAO commentDAO;
	
	
	public int addComment(int postId, int userId, String userNickname, String content) {
		return commentDAO.insertComment(postId, userId, userNickname, content);
	}
}
