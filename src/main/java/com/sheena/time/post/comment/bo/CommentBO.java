package com.sheena.time.post.comment.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.post.comment.dao.CommentDAO;
import com.sheena.time.post.comment.model.CommentModel;

@Service
public class CommentBO {

	@Autowired
	private CommentDAO commentDAO;
	
	
	public int addComment(int postId, int userId, String userNickname, String content) {
		return commentDAO.insertComment(postId, userId, userNickname, content);
	}
	
	
	// 댓글 보여주기
	public List<CommentModel> getCommentList(int postId) {
		
		return commentDAO.selectCommentList(postId);
		
	}
	
}
