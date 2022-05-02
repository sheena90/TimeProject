<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time</title>
  	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	
  	
  	<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
  	
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
  
</head>
<body>
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<section>
			<!-- 프로모션 -->
			<div class="promotion">
				<div class="promotionImg">
					<!-- css 사진 삽입 -->
					
				</div>
				<div class="promotionText">
					<h3 class="text-white font-weight-bold mt-5">Time 맞춤화 서비스</h3>
					<p class="text-white mt-5">
						전문적인 피트니스 라이브러리 : 1000+개<br><br>
						전문 강사님과 함께 하는 라이브 강의
					</p>
					<a href="#" data-toggle="modal" data-target="#customizeModal1">
						<button type="button" class="btn btn-danger mt-5" id="serviceStart">시작하기</button>
					</a>
				</div>
			</div>
			
			<!-- course -->
			<div class="mt-4">
				<div>
					<h3><span class="material-icons-outlined">video_library</span>COURSE</h3>
				</div>
				<div class="d-flex mt-3">
					<!-- 운동영상 -->
					<div class="col-5">
						<div class="d-flex align-items-center justify-content-between">
							<div><b>|</b>부위별 운동</div>
							<div>
								<a class="text-dark" href="/post/content/video_view">더보기 +</a>
							</div>
						</div>
						<div class="d-flex flex-wrap mt-3 mb-3">
							<a href="/post/content/video_view?userGender=남자&body=가슴" class="courseVideoA">
								<div class="courseVideoScreen mr-3">
									<div class="text1">가슴</div>
									<img width="200" height="142" alt="가슴" src="/static/image/가슴.png">
									
								</div>
							</a>
							<a href="/post/content/video_view?userGender=여자&body=어깨" class="courseVideoA">
								<div class="courseVideoScreen mr-3">
									<div class="text1">어깨</div>
									<img width="200" height="142" alt="어깨" src="/static/image/어깨.jpg">
								</div>
							</a>
							<a href="/post/content/video_view?userGender=남자&body=복근" class="courseVideoA">
								<div class="courseVideoScreen">
									<div class="text1">복근</div>
									<img width="200" height="142" alt="복근" src="/static/image/복근.jpg">
								</div>
							</a>
							<a href="/post/content/video_view?userGender=남자&body=하체" class="courseVideoA">
								<div class="courseVideoScreen mr-3 mt-5">
									<div class="text1">하체</div>
									<img width="200" height="142" alt="하체" src="/static/image/하체.png">
								</div>
							</a>
							<a href="/post/content/video_view?userGender=여자&body=힙" class="courseVideoA">
								<div class="courseVideoScreen mr-3 mt-5">
									<div class="text2">힙</div>
									<img width="200" height="142" alt="힙" src="/static/image/힙.jpeg">
								</div>
							</a>
							<a href="/post/content/video_view?userGender=여자&body=등" class="courseVideoA">
								<div class="courseVideoScreen mt-5">
									<div class="text2">등</div>
									<img width="200" height="142" alt="등" src="/static/image/등.jpg">
								</div>
							</a>
						</div>
					</div>
					
					<!-- 지식정보 -->
					<div class="col-4">
						<div class="d-flex align-items-center justify-content-between">
							<div><b>|</b>지식정보</div>
							<div>
								<a class="text-dark" href="/post/content/info_view">더보기 +</a>
							</div>
						</div>
						<div class="mt-3 mb-3">
							<c:forEach var="mainContentInfo" items="${mainContentInfoList }">
								<a href="/post/content/info/detail_view?id=${mainContentInfo.id }" class="text-dark">
									<div class="d-flex mt-3">
										<div>
											<img width="150" height="100" alt="지식정보" src="${mainContentInfo.imagePath }">
										</div>
										<div class="ml-3">
											<small class="font-weight-bold">${mainContentInfo.subject}</small>
											<p>
												<small>
													${fn:substring(mainContentInfo.content, 0, 50) }
													<c:if test="${fn:length(mainContentInfo.content) > 50 }">
													...
													</c:if>
												</small>
											</p>
										</div>
									</div>
								</a>
							</c:forEach>
							
						</div>
					
					</div>
					
					<!-- 커뮤니티 -->
					<div class="col-3">
						<div class="d-flex align-items-center justify-content-between">
							<div><b>|</b>커뮤니티</div>
							<div>
								<a class="text-dark" href="/post/community/main_view">더보기 +</a>
							</div>
						</div>
						<div class="mt-3 mb-3">
							<c:forEach var="mainCommunity" items="${mainCommunityList }">
								<a href="/post/community/review_view?id=${mainCommunity.id }" class="text-dark">
									<div class="d-flex">
										<div class="col-4">
											<b>${mainCommunity.userNickname }</b>
										</div>
										<div class="col-5">
											${fn:substring(mainCommunity.subject, 0, 6) }
											<c:if test="${fn:length(mainCommunity.subject) > 6 }">
											...
											</c:if>
										</div>
										<div class="col-3">
											<p>${mainCommunity.time }</p>
										</div>
									</div>
								</a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 광고 -->
			<div>
				<img id="bannerImage" width="100%" alt="광고배너" src="https://cdn.wallpapersafari.com/96/35/Iju3yC.jpg">
			</div>
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	</div>
	
	
	<!-- Modal 1-->
	<div class="modal fade" id="customizeModal1"  data-backdrop="static"  tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class=" modal-dialog  modal-dialog-centered modal-xl" role="document">
	    	<div class="modal-content modalContent">
		      	<div class="modal-body">
		      	
		      		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span class="text-warning" aria-hidden="true">&times;</span>
        			</button>
	        			
	        		<!-- 삽입 내용 -->
	        		<div class="customizeBox mt-5 mb-5 bg-white">
						
						<!-- 진행률 표시 -->
						<div class="h-25">
							<div class="progress">
								<ul class="progressUl progressUl2 progressUl3 progressUl4">
									<li class="progressLi progressLi2 progressLi3 progressLi4">
										<i class="fa fa-refresh" aria-hidden="true"></i>
										<p>Step1</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-times"></i>
										<p>Step2</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-times"></i>
										<p>Step3</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-times"></i>
										<p>Step4</p>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="h-50 d-flex justify-content-around align-items-center">
							<button class="btn selectButton customizeText text-center where" data-where="홈비기구">
								<small class="mt-4 text-white">홈트레이닝<br>(비기구)</small>
							</button>
							<button class="btn selectButton customizeText text-center where" data-where="홈기구">
								<small class="mt-4 text-white">홈트레이닝<br>(기구)</small>
							</button>
							<button class="btn selectButton customizeText text-center where" data-where="헬스장">
								<small class="mt-4 text-white">헬스장<br>(기구)</small>
							</button>
						</div>
						<div class="h-25 d-flex justify-content-center align-items-start">
							
							<button type="button" class="btn btn-danger modalOff" id="nextBtn1">다음</button>
							
						</div>
						
					</div>
		      			
		      	</div>
	      	</div>
	  	</div>
	</div>
	
	
	
	
	<!-- Modal 2 -->
	<div class="modal fade" id="customizeModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class=" modal-dialog  modal-dialog-centered modal-xl" role="document">
	    	<div class="modal-content modalContent">
		      	<div class="modal-body">
	        			
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span class="text-warning" aria-hidden="true">&times;</span>
        			</button>	
	        			
	        		<!-- 삽입 내용 -->
	        		<div class="customizeBox mt-5 mb-5 bg-white">
	        		
	        			
						
						<!-- 진행률 표시 -->
						<div class="h-25">
							<div class="progress">
								<ul class="progressUl progressUl2 progressUl3 progressUl4">
									<li class="progressLi progressLi2 progressLi3 progressLi4">
										<i class="fa fa-check" aria-hidden="true"></i>
										<p>Step1</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-refresh" aria-hidden="true"></i>
										<p>Step2</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-times"></i>
										<p>Step3</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-times"></i>
										<p>Step4</p>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="text-center">
							<b>그림을 참조하여 유사한 체형을 선택하십시오.</b>
						</div>
						
						<!-- modal2 슬라이드 --> 
						<div>
							<div class="selectButton">
								<div class="d-flex justify-content-between align-items-center mt-5">
									<div>
										<button class="btn type" data-type="체지방1"><img width="75" alt="체지방률" src="/static/image/체지방1.png"></button>
									</div>
									<div>
										<button class="btn type" data-type="체지방2"><img width="75" alt="체지방률" src="/static/image/체지방2.png"></button>
									</div>
									<div>
										<button class="btn type" data-type="체지방3"><img width="75" alt="체지방률" src="/static/image/체지방3.png"></button>
									</div>
									<div>
										<button class="btn type" data-type="체지방4"><img width="75" alt="체지방률" src="/static/image/체지방4.png"></button>
									</div>
									<div>
										<button class="btn type" data-type="체지방5"><img width="75" alt="체지방률" src="/static/image/체지방5.png"></button>
									</div>
									<div>
										<button class="btn type" data-type="체지방6"><img width="75" alt="체지방률" src="/static/image/체지방6.png"></button>
									</div>
									
								</div>
								<div class="d-flex justify-content-between align-items-center mr-4 ml-4">
									<div class="mb-3 ml-2">11-12%</div>
									<div class="mb-3 ml-2">14-15%</div>
									<div class="mb-3 ml-2">17-18%</div>
									<div class="mb-3 ml-2">20-21%</div>
									<div class="mb-3 ml-2">25-26%</div>
									<div class="mb-3 ml-2">34-35%</div>
								</div>
							</div>
						</div>
						
						<div class="h-25 d-flex justify-content-center align-items-center">
							<a href="#" data-toggle="modal" data-target="#customizeModal1">
								<button type="button" class="btn btn-secondary modalOff mr-5">이전</button>
							</a>
							<a href="#" data-toggle="modal" data-target="#customizeModal3">
								<button type="button" class="btn btn-danger modalOff" id="nextBtn2">다음</button>
							</a>
						</div>
						
					</div>
		      			
		      	</div>
	      	</div>
	  	</div>
	</div>
	
	
	
	<!-- Modal 3 -->
	<div class="modal fade" id="customizeModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class=" modal-dialog  modal-dialog-centered modal-xl" role="document">
	    	<div class="modal-content modalContent">
		      	<div class="modal-body">
	        			
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span class="text-warning" aria-hidden="true">&times;</span>
        			</button>	
	        			
	        			
	        		<!-- 삽입 내용 -->
	        		<div class="customizeBox mt-5 mb-5 bg-white">
	        		
	        			
						
						<!-- 진행률 표시 -->
						<div class="h-25">
							<div class="progress">
								<ul class="progressUl progressUl2 progressUl3 progressUl4">
									<li class="progressLi progressLi2 progressLi3 progressLi4">
										<i class="fa fa-check" aria-hidden="true"></i>
										<p>Step1</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-check" aria-hidden="true"></i>
										<p>Step2</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-refresh" aria-hidden="true"></i>
										<p>Step3</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-times"></i>
										<p>Step4</p>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="text-center mb-3">
							<b>운동 목표를 선택하십시오.</b>
						</div>
						
						<!-- modal3 슬라이드 --> 
						<div class="customizeBox3 d-flex  flex-wrap">
							<button class="btn selectButton customizeText3 text-center mr-5 ml-2 body" data-body="가슴">
								<small class="mt-4 text-white">가슴</small>
							</button>
							<button class="btn selectButton customizeText3 text-center mr-5 body" data-body="어깨">
								<small class="mt-4 text-white">어깨</small>
							</button>
							<button class="btn selectButton customizeText3 text-center body" data-body="복근">
								<small class="mt-4 text-white">복근</small>
							</button>
							<button class="btn selectButton customizeText3 text-center mr-5 ml-2 body" data-body="하체">
								<small class="mt-4 text-white">하체</small>
							</button>
							<button class="btn selectButton customizeText3 text-center mr-5 body" data-body="힙">
								<small class="mt-4 text-white">힙</small>
							</button>
							<button class="btn selectButton customizeText3 text-center body" data-body="등">
								<small class="mt-4 text-white">등</small>
							</button>
						</div>
						<div class="h-25 d-flex justify-content-center align-items-center">
							<a href="#" data-toggle="modal" data-target="#customizeModal2">
								<button type="button" class="btn btn-secondary modalOff mr-5">이전</button>
							</a>
							<a href="#" data-toggle="modal" data-target="#customizeModal4">
								<button type="button" class="btn btn-danger modalOff" id="nextBtn3">다음</button>
							</a>
						</div>
						
					</div>
		      			
		      	</div>
	      	</div>
	  	</div>
	</div>
	
	
	<!-- Modal 4-->
	<div class=" modal  fade" id="customizeModal4" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class=" modal-dialog  modal-dialog-centered modal-xl" role="document">
	    	<div class="modal-content modalContent">
		      	<div class="modal-body">
		      	
		      		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span class="text-warning" aria-hidden="true">&times;</span>
        			</button>
	        			
	        		<!-- 삽입 내용 -->
	        		<div class="customizeBox mt-5 mb-5 bg-white">
						
						<!-- 진행률 표시 -->
						<div class="h-25">
							<div class="progress">
								<ul class="progressUl progressUl2 progressUl3 progressUl4">
									<li class="progressLi progressLi2 progressLi3 progressLi4">
										<i class="fa fa-check" aria-hidden="true"></i>
										<p>Step1</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-check" aria-hidden="true"></i>
										<p>Step2</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-check" aria-hidden="true"></i>
										<p>Step3</p>
									</li>
									<li class="progressLi">
										<i class="fa fa-refresh" aria-hidden="true"></i>
										<p>Step4</p>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="h-50 d-flex">
							
							<!-- 동영상 -->
							<div class="col-6 mt-5">
								<img width="100%" alt="썸네일" src="/static/image/man_Thumbnail_1.jpg" id="resultThumbnail">
							</div>
							<input type="hidden" id="link">
							<input type="hidden" id="videoId">
							
							<!-- 계획표 생성 -->
							<div class="col-6">
								<div class="mt-5 mb-4" >
									<b id="titleAdd">계획표 생성</b>
								</div>
								<div>
									<p>결과 문구 생성</p>
								</div>
							</div>
							
						</div>
						<div class="h-25 d-flex justify-content-center align-items-center">
							<a href="#" data-toggle="modal" data-target="#customizeModal3">
								<button type="button" class="btn btn-secondary modalOff mr-5">이전</button>
							</a>
							<a href="/user/myPlan_view" data-toggle="modal" data-target="#customizeNextModal">
								<button type="button" class="btn btn-danger" id="addBtn">계획표 추가</button>
							</a>
						</div>
						
					</div>
		      			
		      	</div>
	      	</div>
	  	</div>
	</div>

	
	
	<script>
		$(document).ready(function() {
			
			
			var where = "";
			var type = "";
			var body = "";
			
			$(".where").on("click", function() {
				
				where = $(this).data("where");
				
			});
			
			
			$(".type").on("click", function() {
				
				type = $(this).data("type");
			});
			
			
			$(".body").on("click", function() {
				
				body = $(this).data("body");
			});
			
			
			// modal 1_다음 버튼에 대한 이벤트 등록(아무것도 선택을 안했을 때)
			$("#nextBtn1").on("click", function() {
				
				if(where == "") {
					alert("해당 항목을 선택해주세요.");
					return;
				}
				// 나머지 보여주지 않기!
				$("#customizeModal2").modal("show");
				
			});
			
			// modal 2_다음 버튼에 대한 이벤트 등록(아무것도 선택을 안했을 때)
			$("#nextBtn2").on("click", function() {
				
				if(type == "") {
					alert("해당 항목을 선택해주세요.");
					return;
				}
				// 나머지 보여주지 않기!
				$("#customizeModal3").modal("show");
				
			});
			
			
			// 맞춤화 서비스 model3 다음 버튼에 대한 이벤트 처리
			$("#nextBtn3").on("click", function() {
				
				if(body == "") {
					alert("해당 항목을 선택해주세요.");
					return;
				}
				// 나머지 보여주지 않기!
				$("#customizeModal4").modal("show");
				
				$.ajax({
					
					type:"post",
					url:"/post/service",
					data:{"where":where, "type":type, "body":body},
					success:function(data) {
						
						// 해당 속성의 값을 체인지 
						$("#resultThumbnail").attr("src", data.thumbnail);
						
						// 이 부분은 맞춤화 서비스 계획표 추가 시 필요한 내용, 해당 속성의 값을 체인지 
						$("#titleAdd").text(data.title);
						$("#link").val(data.link);
						$("#videoId").val(data.id);
						
						
						
						
					},
					error:function() {
						alert("맞춤화 서비스 에러");
					}
				});
			});
			
			
			// 맞춤형 서비스를 로그인이 안되어있을 때 안보여주는 이벤트 등록
			$("#serviceStart").on("click", function() {
				
				
				
			});
			
			
			
			
			
			// 맞춤화 서비스 새로운 modal창이 띄워질 때, 기존 modal창 닫기 
			$(".modalOff").on("click", function() {
				
				$("#customizeModal1").modal("hide");
				$("#customizeModal2").modal("hide");
				$("#customizeModal3").modal("hide");
				$("#customizeModal4").modal("hide");
				
			});
			
			
			
			// 메인 페이지_맞춤형 서비스_계획표 추가 
			$("#addBtn").on("click", function() {
				
				// 값을 가져올 때 
				let videoId = $("#videoId").val();
				let thumbnail = $("#resultThumbnail").attr("src");
				let title = $("#titleAdd").text();
				let link = $("#link").val();
				
				
				
				$.ajax({
					type:"post",
					url:"/post/service/plan",
					data:{"videoId":videoId, "thumbnail":thumbnail, "title":title, "link":link},
					success:function(data) {
						
						if(data.result == "success") {
							location.href="/user/myPlan_view";
						} else {
							alert("계획표 추가 실패");
						}
					},
					error:function() {
						alert("계획표 추가 에러");
					}
				});
			}); 
			
			
			
			
			// 3초마다 이미지 바꾸기
			var bannerList = ["https://cdn.wallpapersafari.com/96/35/Iju3yC.jpg","/static/image/광고_nike.jpg", "/static/image/광고_데상트.jpg"];
			var currentImageIndex = 0;
			setInterval(function() {
				$("#bannerImage").attr("src", bannerList[currentImageIndex]);
				currentImageIndex++;
				
				if(currentImageIndex == bannerList.length) {
					currentImageIndex = 0;
				}
			}, 2000);
			
			
			// modal2 슬라이드
			$('.center').slick({
				  centerMode: true,
				  centerPadding: '60px',
				  slidesToShow: 3,
				  responsive: [
				    {
				      breakpoint: 768,
				      settings: {
				        arrows: false,
				        centerMode: true,
				        centerPadding: '40px',
				        slidesToShow: 3
				      }
				    },
				    {
				      breakpoint: 480,
				      settings: {
				        arrows: false,
				        centerMode: true,
				        centerPadding: '40px',
				        slidesToShow: 1
				      }
				    }
				  ]
			});
			
			
		});
	</script>
</body>
</html>