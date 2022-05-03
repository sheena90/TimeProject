package com.sheena.time.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sheena.time.managerPost.model.ManagerPostModel;
import com.sheena.time.managerPostNotice.model.NoticeModel;
import com.sheena.time.managerPostVideo.model.VideoModel;
import com.sheena.time.post.bo.PostBO;
import com.sheena.time.post.comment.bo.CommentBO;
import com.sheena.time.post.comment.model.CommentModel;
import com.sheena.time.post.model.CommunityModel;
import com.sheena.time.post.model.PostModel;
import com.sheena.time.post.model.VideoDetailModel;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;
	
	@Autowired
	private CommentBO commentBO;
	
	
	
	@GetMapping("/main_view")
	public String mainView(Model model) {
		
		// 메인화면_커뮤니티 리스트 가져오기
		List<CommunityModel> mainCommunityList = postBO.getPostMainCommunityList();
		
		model.addAttribute("mainCommunityList", mainCommunityList);
		
		
		// 메인화면_지식정보 리스트 가져오기
		List<ManagerPostModel> mainContentInfoList = postBO.getManagerPostMainInfoList();
		
		model.addAttribute("mainContentInfoList", mainContentInfoList);
		
		
		return "post/mainPage";
	}
	
	
	// content_영상, 지식정보
	// 운동영상 리스트
	@GetMapping("/content/video_view")
	public String contentVideoView(Model model, 
			
			// select box
			@RequestParam(value="userGender", required=false) String userGender,
			@RequestParam(value="body", required=false) String body,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		Integer userId = (Integer)session.getAttribute("userId");
		
		
		
		if(userGender != null & body != null) {
			List<VideoDetailModel> managerPostVideoList = postBO.getMangerPostVideo(userGender, body, userId);
			
			model.addAttribute("managerPostVideoList", managerPostVideoList);
			
			
		} else {
			List<VideoDetailModel> managerPostVideoList = postBO.getManagerPostVideoList(userId);
			
			model.addAttribute("managerPostVideoList", managerPostVideoList);
			
			
		}
		
		// 사용자가 좋아요를 눌렀는지
		// boolean isFavorites = favoritesBO.isFavorites(, )
		
		return "post/content_video";
	}
	
	
	
	// 지식정보 리스트
	@GetMapping("/content/info_view")
	public String contentInfoView(Model model) {
		
		List<ManagerPostModel> managerPostList = postBO.getManagerPostList();
		
		model.addAttribute("managerPostList", managerPostList);
		
		return "post/content_info";
	}
	
	
	
	
	// 지식정보 디테일 화면
	@GetMapping("/content/info/detail_view")
	public String infoDetailView(@RequestParam("id") int id, Model model) {
		
		ManagerPostModel managerPostInfo = postBO.getManagerPost(id);
		
		model.addAttribute("managerPostInfo", managerPostInfo);
		return "post/content_info_detail";
	}
	
	
	
	
	// 커뮤니티
	@GetMapping("/community/main_view")
	public String communityMainView(Model model) {
		
		// community_메인 화면 모든 사용자의 게시글 가져오기
		List<CommunityModel> postFullList = postBO.getPostFullList();
		
		model.addAttribute("postFullList", postFullList);
		
		return "post/community_main";
	}
	
	@GetMapping("/community/create_view")
	public String communityCreateView() {
		return "post/community_create";
	}
	
	
	// 커뮤니티 모든 사용자의 해당 게시글 디테일뷰 가져오기
	@GetMapping("/community/review_view")
	public String communityReview(@RequestParam("id") int id, Model model) {
		
		// 댓글 가져오기
		List<CommentModel> commentList = commentBO.getCommentList(id);
		model.addAttribute("commentList", commentList);
		
		
		PostModel postFull = postBO.postId(id);
		
		model.addAttribute("postFull", postFull);
		
		return "post/community_review";
	}
	
	
	
	@GetMapping("/community/list_view")
	public String communityListView(
			HttpServletRequest request,
			Model model) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostModel> postList = postBO.getPostList(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/community_list";
	}
	
	
	
	
	// 라이브 강의(입장 후)
	@GetMapping("/live/play_view")
	public String livePlayView(@RequestParam("id") int id, Model model) {
		
		VideoModel liveVideo = postBO.getManagerPostLiveDetail(id);
		
		model.addAttribute("liveVideo", liveVideo);
		
		
		return "post/live_play";
	}
	
	
	
	
	
	// 공지사항 리스트
	@GetMapping("/notice_view")
	public String noticeView(Model model) {
		
		List<NoticeModel> noticeList = postBO.getManagerPostNoticeList();
		
		model.addAttribute("noticeList", noticeList);
		
		return "post/notice";
	}
	
	
	// 공지사항 디테일 화면
	@GetMapping("/notice/detail_view")
	public String noticeDetailView(@RequestParam("id") int id, Model model) {
		
		NoticeModel noticeDetail = postBO.getNotice(id);
		
		model.addAttribute("noticeDetail", noticeDetail);
		
		return "post/notice_detail";
	}
	
	
	// 메인화면 Q&A
	@GetMapping("/question_view")
	public String questionView() {
		return "post/question";
	}
	
	
}
