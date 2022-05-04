<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My 회원정보</title>
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
		
		<div class="myPage mt-5 mb-5">
			<div class="d-flex justify-content-between col-8">
				<a class="text-dark" href="/user/myProfile_view"><span class="text-danger">회원정보</span></a>
				<a class="text-dark" href="/user/myFavorites_view"><span>즐겨찾기</span></a>
				<a class="text-dark" href="/user/myPlan_view"><span>계획표</span></a>
				<a class="text-dark" href="/user/myQuestion_view"><span>Q&A</span></a>
				<a class="text-dark" href="/user/myWithdraw_view"><span>회원탈퇴</span></a>
			</div>
			<hr> 
			<div class="mr-3 ml-3 mt-5">
				<b>프로필 수정</b>
				<p><small class="text-secondary">Time 대표 프로필과 닉네임을 수정 하실 수 있습니다.</small></p>
			</div>
			<div class="mt-4">
				<div class="w-75 ml-5">
					<!-- 프로필 사진 수정 -->
					<div class="d-flex ml-3">
						<div class="profileTextBox text-center">프로필 사진</div>
						<div class="myProfileBox ml-5 mb-4 mt-3">
							<div class="myProfile ml-4">
								<img class="profile" src="https://i.pinimg.com/originals/e3/cb/8e/e3cb8eeb33d7d8f7a5ac65a08bc255ed.jpg">
							</div>
							
							<div class="d-flex justify-content-between mt-4">
								<input type="file" class="mt-3 d-none" id="profileInput">
								<button type="button" class="btn" id="profileBtn">사진변경</button>
								<button type="button" class="btn" id="deleteBtn">삭제</button>
							</div>
						</div>
					</div>
					
					<hr>
					
					<!-- 닉네임 수정 -->
					<div class="d-flex ml-3 mt-4">
						<div class="profileNicknameBox text-center">닉네임</div>
						<div class="profileBox ml-5 text-center mb-4">
							<div class="d-flex mt-5">
								<input type="text" class="form-control" placeholder="${userNickname }" id="nicknameInput">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="page mt-5">
				<button type="button" class="btn btn-primary mr-3" id="applyBtn">적용</button>
				<button type="button" class="btn btn-secondary">취소</button>
			</div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	
	
	<script>
		$(document).ready(function() {
			
			// 프로필 업로드
			$("#profileBtn").on("click", function() {
				var formData = new FormData();
				formData.append("file", $("#profileInput")[0].files[0]);
				
				$.ajax({
					type:"post",
					url:"/user/profile/upload",
					data:formData,
					enctype:"multipart/form-data",    
					processData:false,				 
					contentType:false,
					success:function(data) {
						
						if(data.result == "success") {
							location.reload();
						} else {
							alert("프로필 업로드 실패");
						}
						
					},
					error:function() {
						alert("프로필 업로드 에러");
					}
				});
				
			});
			
			
			// 프로필 수정
			$("#applyBtn").on("clic", function() {
				let nickname = $("#nicknameInput").val();
				
				var formData = new FormData();
				formData.append("nickname", nickname);
				formData.append("file", $("#profileInput")[0].files[0]);
				
				$.ajax({
					type:"post",
					url:"/user/profile/update",
					data:formData,
					enctype:"multipart/form-data",    
					processData:false,				 
					contentType:false,
					success:function(data) {
						
						if(data.result == "success") {
							alert("회원정보가 수정되었습니다.");
							location.reload();
						} else {
							alert("프로필 수정 실패");
						}
						
					},
					error:function() {
						alert("프로필 수정 에러");
					}
					
				});
				
				
			});
			
			
			// 프로필 버튼
			$("#profileBtn").on("click", function() {
				// profileInput 클릭 효과와 일치
				$("#profileInput").click();
			});
			
			
			
			// 프로필 삭제
			$("#deleteBtn").on("click", function() {
				
				$.ajax({
					type:"get",
					url:"/user/profile/delete";
					success:function(data) {
					if(data.result == "success") {
						alert("회원님의 프로필이 삭제되었습니다.");
						location.reload();
					} else {
						alert("프로필 삭제 실패");
					}
				},
				error:function() {
					alert("프로필 삭제 에러");
				}
				});
			});
			
			
			
			
			
			
			
		});
	
	
	</script>
	

</body>
</html>