package com.sheena.time.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sheena.time.managerPost.model.ManagerPostModel;
import com.sheena.time.managerPostVideo.model.VideoModel;
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
	
	
	
	// 메인화면_커뮤니티 리스트 가져오기
	public List<PostModel> selectPostMainCommunityList();
	
	
	
	// 커뮤니티_게시글 수정
	public int communityUpdatePost(
			@Param("postId") int postId,
			@Param("subject") String subject,
			@Param("content") String content);
	
	
	// 커뮤니티_게시글 삭제
	public int communityDeletePost(@Param("postId") int postId, @Param("userId") int userId);
	
	
	
	// 운동영상 리스트
	public List<VideoModel> selectManagerPostVideoList();
	
	
	
	// 지식정보 리스트
	public List<ManagerPostModel> selectManagerPostList();
	
	
	
	// 메인화면_지식정보 리스트 가져오기
	public List<ManagerPostModel> selectManagerPostMainInfoList();
	
	
	
	// 지식정보 해당 디테일뷰 가져오기
	public ManagerPostModel selectManagerPost(@Param("id") int id);
	
	

	
}
