package com.sheena.time.post.comment.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentDAO {

	public int insertComment(
			@Param("postId") int postId,
			@Param("userId") int userId,
			@Param("userNickname") String userNickname,
			@Param("content") String content);
}
