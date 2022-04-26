package com.sheena.time.post.comment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.post.comment.model.CommentModel;

@Repository
public interface CommentDAO {

	public int insertComment(
			@Param("postId") int postId,
			@Param("userId") int userId,
			@Param("userNickname") String userNickname,
			@Param("content") String content);
	
	
	// 댓글 보여주기
	public List<CommentModel> selectCommentList(@Param("postId") int postId);
}
