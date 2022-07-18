<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
				<img class="col-2" width="120" alt="logo" src="/static/image/logo.png" >
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white">Login</h3>
			</div>
			
			<form id="loginForm">
				<div class="signInInput">
					
					<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="아이디">						
					
					<input type="password" id="passwordInput" class="form-control mt-3" placeholder="비밀번호">
					
						
					<div class="d-flex align-items-center justify-content-center">
						<button type="submit" id="signUpBtn" class="button btn btn-danger mt-5 mb-4">로그인</button>
					</div>
					
					<div class="line">
						또는
					</div>
					
					<div class="login mt-2 mb-5 d-flex align-items-center justify-content-center">
						계정이 없으신가요?
						<a href="/user/signup_view" class="font-weight-bold">회원가입</a>
					</div>
				</div>
			</form>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	
	<script>
		$(document).ready(function() {
			$("#loginForm").on("submit", function(e) {
				// 해당 이벤트가 갖고 있는 기본 속성 취소
				e.preventDefault();
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요.");
					return;
				}
				
				if(password == "") {
					alert("비밀번호를 입력하세요.");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/user/sigin_in",
					data:{"loginId":loginId, "password":password},
					success:function(data) {
						
						if(data.result == "success") {
							location.href="/post/main_view";
							//location.href="uri";
						} else {
							alert("아이디/비밀번호를 확인해 주세요.");
						}
					},
					error:function() {
						alert("로그인 에러");
					}
				});
			});
		});
	
	</script>
</body>
</html>