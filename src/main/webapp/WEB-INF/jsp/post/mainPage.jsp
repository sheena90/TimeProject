<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<section>
			<!-- 프로모션 -->
			<div class="promotion">
				<div class="promotionImg">
					<img width="1600" height="500" alt="logo" src="/static/image/홍보.jpeg">
				</div>
				<div class="promotionText">
					<h3 class="text-white font-weight-bold mt-5">Time 맞춤화 서비스</h3>
					<p class="text-white mt-5">
						전문적인 피트니스 라이브러리 : 1000+개<br><br>
						전문 강사님과 함께 하는 라이브 강의
					</p>
					<button type="button" class="btn btn-danger mt-5">시작하기</button>
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
							<div>더보기 +</div>
						</div>
						<div class="d-flex flex-wrap mt-3 mb-3">
							<div class="courseVideo mr-3">
								<img class="img" width="200" height="140" alt="가슴" src="/static/image/가슴.png">
								<h4 class="text">가슴</h4>
							</div>
							<div class="courseVideo mr-3">
								<img width="200" height="140" alt="어깨" src="/static/image/어깨.png">
							</div>
							<div class="courseVideo">
								<img width="200" height="140" alt="복근" src="/static/image/복근.jpg">
							</div>
							<div class="courseVideo mr-3 mt-5">
								<img width="200" height="140" alt="하체" src="/static/image/하체.png">
							</div>
							<div class="courseVideo mr-3 mt-5">
								<img width="200" height="140" alt="힙" src="/static/image/힙.png">
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
							<div>더보기 +</div>
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
							<div><b>|</b>지식정보</div>
							<div>더보기 +</div>
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
				<img id="bannerImage" width="100%" height="300" alt="광고배너" src="/static/image/광고_adidas.png">
			</div>
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	</div>
	
	<script>
		$(document).ready(function() {
			
			// 3초마다 이미지 바꾸기
			var bannerList = ["/static/image/광고_adidas.png","/static/image/광고_nike.png", "/static/image/광고_puma.jpg"];
			var currentImageIndex = 0;
			setInterval(function() {
				$("#bannerImage").attr("src", bannerList[currentImageIndex]);
				currentImageIndex++;
				
				if(currentImageIndex == bannerList.length) {
					currentImageIndex = 0;
				}
			}, 2000);
			
		});
	</script>
</body>
</html>