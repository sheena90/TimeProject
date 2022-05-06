<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
		
		<div class="signUp mt-5 mb-5">
			<div class="signUpHeader d-flex align-items-center justify-content-center">
				<img class="col-2" width="120" alt="logo" src="/static/image/logo.PNG" >
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white">Sign Up</h3>
			</div>
			
			<div class="signUpInput mt-5">
				<div class="input-group">
					<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="아이디(필수)">
					<div class="input-group-append">
						<button type="button" id="isDuplicateBtn" class="btn btn-secondary mt-3">중복확인</button>
					</div>						
				</div>
				<div class="d-none" id="possibleText"><small class="text-success">사용 가능한 아이디입니다.</small></div>
				<div class="d-none" id="duplicateText"><small class="text-danger">중복된 아이디입니다.</small></div>
				<input type="password" id="passwordInput" class="form-control mt-3" placeholder="비밀번호(필수)">
				<input type="password" id="passwordConfirmInput" class="form-control mt-3" placeholder="비밀번호 확인(필수)">
				<input type="text" id="nicknameInput" class="form-control mt-3" placeholder="닉네임(필수)">
				<select id="genderInput" class="form-control mt-3">
					<option selected value="">성별(필수)</option>
					<option>남자</option>
					<option>여자</option>
				</select>
				
				<div class="input-group">
					<input type="text" id="emailInput" class="form-control mt-3" placeholder="이메일 주소(필수)">
				</div>
					
				<div class="d-flex align-items-center justify-content-center">
					<button type="button" id="signUpBtn" class="button btn btn-danger mt-5 mb-4">회원가입</button>
				</div>
				
				<div class="line">
					또는
				</div>
			</div>
			
			<div class="login mt-2 mb-5 d-flex align-items-center justify-content-center">
				계정이 있으신가요?
				<a href="/user/signin_view" class="font-weight-bold"> 로그인</a>
			</div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	
	<script>
		$(document).ready(function() {
			// 중복 체크 확인 여부
			var isChecked = false;
			// 중복여부
			var isDuplicate = true;
			
			
			// loginIdInput에 변화가 있을 경우, 중복체크 여부 초기화
			$("#loginIdInput").on("input", function() {
				isChecked = false;
				isDuplicate = true;
				
				// 중복확인 문구 초기화(사라짐)
				$("#duplicateText").addClass("d-none");
				$("#possibleText").addClass("d-none");
			});
			
			
			//회원가입
			$("#signUpBtn").on("click", function(e) {
				
				// 해당 이벤트가 갖고 있는 기본 속성 취소
				e.preventDefault();
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				let passwordConfirm = $("#passwordConfirmInput").val();
				let nickname = $("#nicknameInput").val();
				let gender = $("#genderInput").val();
				let email = $("#emailInput").val();
			
				if(loginId == "") {
					alert("아이디를 입력하세요.");
					return;
				}
				
				if(!isChecked) {
					alert("중복확인을 진행해 주세요.");
					return;
				}
				
				if(isDuplicate) {
					alert("중복된 아이디입니다.");
					return;
				}
				
				if(password == "") {
					alert("비밀번호를 입력하세요.");
					return;
				}
				
				if(password != passwordConfirm) {
					alert("비밀번호가 일치하지 않습니다.");
					return;
				}
				
				if(nickname == "") {
					alert("닉네임을 입력하세요.");
					return;
				}
				
				if(gender == "") {
					alert("성별을 선택하세요.");
					return;
				}
			
				if(email == "") {
					alert("이메일을 입력하세요.");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/user/sign_up",
					data:{"loginId":loginId, "password":password, "nickname":nickname, "gender":gender,"email":email},
					success:function(data) {
						if(data.result == "success") {
							// 회원가입 성공
							location.href="/user/signin_view";
						} else {
							alert("회원가입 실패");
						}
					},
					error:function() {
						alert("회원가입 에러");
					}
				});
			});
			
			
			// 아이디 중복확인
			$("#isDuplicateBtn").on("click", function() {
				let loginId = $("#loginIdInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요.");
					return;
				}
				
				$.ajax({
					type:"get",
					url:"/user/duplicate_id",
					data:{"loginId":loginId},
					success:function(data) {
						
						// 체크 했음을 확인
						isChecked = true;
						
						// 중복확인 문구 숨기기(초기화)
						$("#duplicateText").addClass("d-none");
						$("#possibleText").addClass("d-none");
						
						if(data.is_duplicate) {
							$("#duplicateText").removeClass("d-none");	
						} else {
							$("#possibleText").removeClass("d-none");
						}
						
						isDuplicate = data.is_duplicate;
					},
					error:function() {
						alert("아이디 중복확인 에러");
					}
				});
				
			});	
			
		});
	</script>
</body>
</html>