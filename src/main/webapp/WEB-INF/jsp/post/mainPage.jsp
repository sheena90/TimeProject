<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time</title>
	<!-- slick cdn -->
  	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
    <!-- slick cdn -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    
    
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
						<button type="button" class="btn btn-danger mt-5">시작하기</button>
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
							<div class="courseVideo mr-3">
								<img class="img" width="200" height="140" alt="가슴" src="/static/image/가슴.png">
								
							</div>
							<div class="courseVideo mr-3">
								<img width="200" height="140" alt="어깨" src="/static/image/어깨.jpg">
							</div>
							<div class="courseVideo">
								<img width="200" height="140" alt="복근" src="/static/image/복근.jpg">
							</div>
							<div class="courseVideo mr-3 mt-5">
								<img width="200" height="140" alt="하체" src="/static/image/하체.png">
							</div>
							<div class="courseVideo mr-3 mt-5">
								<img width="200" height="140" alt="힙" src="/static/image/힙.jpeg">
							</div>
							<div class="courseVideo mt-5">
								<img width="200" height="140" alt="등" src="/static/image/등.jpg">
							</div>
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
							<div class="d-flex">
								<div>
									<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_1.jpg">
								</div>
								<div class="ml-3">
									<b>잘못 알고 있는 헬스 상식 6가지</b>
									<p>미국 일간 워싱턴포스트지가 아처를 비롯해 전문가들의 견해를 토대로 잘못된 헬스 상식 6가지를 소개했다.</p>
								</div>
							</div>
							<div class="d-flex">
								<div>
									<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_2.jpg">
								</div>
								<div class="ml-3">
									<b>우리가 하고 있는 '헬스'는 '건강'한 운동일까?</b>
									<p>'헬스'라는 표현이 있다. 기본적으로는 '건강'이라는 뜻의 영단어인데, 한국어의 범주에서는 좀 다른 의미도 품고 있다.</p>
								</div>
							</div>
							<div class="d-flex">
								<div>
									<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_3.jpg">
								</div>
								<div class="ml-3">
									<b>건강에 좋은 운동... 같이 섭취해야 할 음식은?</b>
									<p>운동을 하고 나면 스트레스가 날아가고, 신체의 전반적인 건강도 향상된다. 운동을 할 때는 뭘 먹느냐 하는 것도 중요한 요소가 된다. </p>
								</div>
							</div>
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
							<div class="d-flex">
								<div class="col-4">
									<b>***sk님</b>
								</div>
								<div class="col-5">
									<p>운동이 되...</p>
								</div>
								<div class="col-3">
									<p>1분전</p>
								</div>
							</div>
							<div class="d-flex">
								<div class="col-4">
									<b>***sk님</b>
								</div>
								<div class="col-5">
									<p>운동이 되...</p>
								</div>
								<div class="col-3">
									<p>1분전</p>
								</div>
							</div>
							<div class="d-flex">
								<div class="col-4">
									<b>***sk님</b>
								</div>
								<div class="col-5">
									<p>운동이 되...</p>
								</div>
								<div class="col-3">
									<p>1분전</p>
								</div>
							</div>
							<div class="d-flex">
								<div class="col-4">
									<b>***sk님</b>
								</div>
								<div class="col-5">
									<p>운동이 되...</p>
								</div>
								<div class="col-3">
									<p>1분전</p>
								</div>
							</div>
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
	<div class="modal fade" id="customizeModal1"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
							<button class="btn btn-secondary customizeText text-center">
								<small class="mt-4">홈트레이닝<br>(비기구)</small>
							</button>
							<button class="btn btn-secondary customizeText text-center">
								<small class="mt-4">홈트레이닝<br>(기구)</small>
							</button>
							<button class="btn btn-secondary customizeText text-center">
								<small class="mt-4">헬스장<br>(기구)</small>
							</button>
						</div>
						<div class="h-25 d-flex justify-content-center align-items-start">
							<a href="#" data-toggle="modal" data-target="#customizeModal2">
								<button type="button" class="btn btn-danger modalOff">다음</button>
							</a>
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
						
						<div class="text-center mb-3">
							<b>그림을 참조하여 유사한 체형을 선택하십시오.</b>
						</div>
						
						<!-- modal2 슬라이드 --> 
						<div>
							<div class="center bg-secondary">
								<div>
									<img width="100" alt="체지방률" src="/static/image/체지방1.png">
								</div>
								<div>
									<img width="100" alt="체지방률" src="/static/image/체지방2.png">
								</div>
								<div>
									<img width="100" alt="체지방률" src="/static/image/체지방3.png">
								</div>
								<div class="center">
									<img width="100" alt="체지방률" src="/static/image/체지방4.png">
								</div>
								<div>
									<img width="100" alt="체지방률" src="/static/image/체지방5.png">
								</div>
								<div>
									<img width="100" alt="체지방률" src="/static/image/체지방6.png">
								</div>
							</div>
						</div>
						
						<div class="h-25 d-flex justify-content-center align-items-center">
							<a href="#" data-toggle="modal" data-target="#customizeModal3">
								<button type="button" class="btn btn-danger modalOff">다음</button>
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
							<button class="btn btn-secondary customizeText3 text-center mr-5 ml-2">
								<small class="mt-4">가슴</small>
							</button>
							<button class="btn btn-secondary customizeText3 text-center mr-5">
								<small class="mt-4">어깨</small>
							</button>
							<button class="btn btn-secondary customizeText3 text-center">
								<small class="mt-4">복근</small>
							</button>
							<button class="btn btn-secondary customizeText3 text-center mr-5 ml-2">
								<small class="mt-4">하체</small>
							</button>
							<button class="btn btn-secondary customizeText3 text-center mr-5">
								<small class="mt-4">힙</small>
							</button>
							<button class="btn btn-secondary customizeText3 text-center">
								<small class="mt-4">등</small>
							</button>
						</div>
						<div class="h-25 d-flex justify-content-center align-items-center">
							<a href="#" data-toggle="modal" data-target="#customizeModal4">
								<button type="button" class="btn btn-danger modalOff">다음</button>
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
						
						<div class="h-50 d-flex bg-danger">
							
							<!-- 동영상 -->
							<div class="col-6 bg-info">
							
							</div>
							
							<!-- 계획표 생성 -->
							<div class="col-6 bg-warning ">
								<div class="mt-5 mb-4"><b>계획표 생성</b></div>
								<textarea style="width:100%;">결과 내용 추가 예정</textarea>
							</div>
							
						</div>
						<div class="h-25 d-flex justify-content-center align-items-center">
							<a href="/user/myPlan_view" data-toggle="modal" data-target="#customizeNextModal">
								<button type="button" class="btn btn-danger">계획표 추가</button>
							</a>
						</div>
						
					</div>
		      			
		      	</div>
	      	</div>
	  	</div>
	</div>

	
	
	<script>
		$(document).ready(function() {
			
			// 맞춤화 서비스 새로운 modal창이 띄워질 때, 기존 modal창 닫기 
			$(".modalOff").on("click", function() {
				
				$("#customizeModal1").modal("hide");
				$("#customizeModal2").modal("hide");
				$("#customizeModal3").modal("hide");
				
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