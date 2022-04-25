package com.sheena.time.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPost.model.ManagerPostModel;
import com.sheena.time.post.model.PostModel;

@Repository
public interface PostDAO {

	// 커뮤니티_글쓰기
	public int insertPost(
			@Param("userId") int userId,
			@Param("userNickname") String userNickname,
			@Param("subject") String subject, 
			@Param("content") String content,
			@Param("filePath") String filePath);
	
	
	// 커뮤니티_리스트
	public List<PostModel> selectPostList(@Param("userId") int userId);
	
	
	// 커뮤니티_게시글 상세페이지 modal창 띄우기
	// 커뮤니티 모든 사용자의 해당 게시글 디테일뷰 가져오기(도 같이 사용)
	public PostModel selectId(@Param("id") int id);
	
	
	// community_메인 화면 모든 사용자의 게시글 가져오기
	public List<PostModel> selectPostFullList();
	
	
	// 커뮤니티_게시글 수정
	public int communityUpdatePost(
			@Param("postId") int postId,
			@Param("subject") String subject,
			@Param("content") String content);
	
	
	// 지식정보 리스트
	public List<ManagerPostModel> selectManagerPostList(@Param("managerId") int managerId);
	
	
}
