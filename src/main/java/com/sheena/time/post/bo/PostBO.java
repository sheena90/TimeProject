package com.sheena.time.post.bo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sheena.time.common.Dateutil;
import com.sheena.time.common.FileManagerService;
import com.sheena.time.managerPost.model.ManagerPostModel;
import com.sheena.time.managerPostNotice.model.NoticeModel;
import com.sheena.time.managerPostVideo.model.VideoModel;
import com.sheena.time.post.dao.PostDAO;
import com.sheena.time.post.model.CommunityModel;
import com.sheena.time.post.model.PostModel;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	//@Autowired
	//private CommentBO commentBO;
	
	
	// 메인 페이지 맞춤형 서비스 modal창 띄우기 
	public VideoModel getservice(String body, String userGender) {
		return postDAO.selectService(body, userGender);
	}
	

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
	// 커뮤니티 모든 사용자의 해당 게시글 디테일뷰 가져오기(도 같이 사용)
	public PostModel postId(int id) {
		
		return postDAO.selectId(id);
	}
	
	
	
	
	// community_메인 화면 모든 사용자의 게시글 가져오기
	public List<CommunityModel> getPostFullList() {
		
		List<PostModel> communityList = postDAO.selectPostFullList();
		
		List<CommunityModel> communityModelList = new ArrayList<>();
		
		for(PostModel postModel : communityList) {
			
			CommunityModel communityModel = new CommunityModel();
			
			communityModel.setId(postModel.getId());
			communityModel.setSubject(postModel.getSubject());
			communityModel.setUserNickname(postModel.getUserNickname());
			communityModel.setTime(Dateutil.calculateTime(postModel.getCreatedAt()));
			
			communityModelList.add(communityModel);
		}
		
			return communityModelList;
		
		 
	}
	
	
	
	// 메인화면_커뮤니티 리스트 가져오기
	public List<CommunityModel> getPostMainCommunityList() {
		
		List<PostModel> mainCommunityList = postDAO.selectPostMainCommunityList();
		
		List<CommunityModel> communityModel = new ArrayList<>();
		
		for(PostModel postModel : mainCommunityList) {
			
			CommunityModel community = new CommunityModel();
			
			community.setId(postModel.getId());
			community.setSubject(postModel.getSubject());
			community.setUserNickname(postModel.getUserNickname());
			community.setTime(Dateutil.calculateTime(postModel.getCreatedAt()));
			
			communityModel.add(community);
		}
		
		return communityModel;
	}
	
	
	
	
	
	// 커뮤니티_게시글 수정
	public int communityUpdatePost(int postId, String subject, String content) {
		return postDAO.communityUpdatePost(postId, subject, content);
	}
	
	
	// 커뮤니티_게시글 삭제
	public int communityDeletePost(int postId, int userId) {
		
		PostModel postModel = this.postId(postId);
		// 파일 삭제
		FileManagerService.removeFile(postModel.getImagePath());
		
		return postDAO.communityDeletePost(postId, userId);
	}
	
	
	// 운동영상 리스트
	public List<VideoModel> getManagerPostVideoList() {
		return postDAO.selectManagerPostVideoList();
	}
	
	
	
	// 운동영상select
	public List<VideoModel> getMangerPostVideo(String userGender, String body) {
		return postDAO.selectManagerpostVideo(userGender, body);
	}
	
	
	// 라이브 강의 리스트(모달창)
	public List<VideoModel> getManagerPostLive(String type) {
		return postDAO.selectManagerPostLive(type);
	}
	
	
	
	// 라이브 강의(입장 후)
	public VideoModel getManagerPostLiveDetail(int id) {
		return postDAO.selectManagerPostLiveDetail(id);
	}
	
	
	
	// 지식정보 리스트
	public List<ManagerPostModel> getManagerPostList() {
		return postDAO.selectManagerPostList();
	}
	
	
	// 메인화면_지식정보 리스트 가져오기
	public List<ManagerPostModel> getManagerPostMainInfoList() {
		return postDAO.selectManagerPostMainInfoList();
	}
	
	
	
	// 지식정보 해당 디테일뷰 가져오기
	public ManagerPostModel getManagerPost(int id) {
		return postDAO.selectManagerPost(id);
	}
	
	
	// 공지사항 리스트
	public List<NoticeModel> getManagerPostNoticeList() {
		return postDAO.selectManagerPostNoticeList();
	}

	
	
	
}
