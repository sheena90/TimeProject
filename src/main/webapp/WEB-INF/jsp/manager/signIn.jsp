<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
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
		
		<c:import url="/WEB-INF/jsp/include/managerHeader.jsp" />
		
		<div class="signUp mt-5 mb-5">
			<div class="signUpHeader d-flex align-items-center justify-content-center">
				<h3 class="col-2 text-white text-center">관리자</h3>
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white text-center">Login</h3>
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
						<a href="/timeManager/signup_view" class="font-weight-bold">회원가입</a>
					</div>
				</div>
			</form>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/managerFooter.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function() {
			$("#loginForm").on("submit",function(e) {
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
					url:"/timeManager/sign_in",
					data:{"loginId":loginId, "password":password},
					success:function(data) {
						
						if(data.result == "success") {
							location.href="/managerPost/content/info_view";
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