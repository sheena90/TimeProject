<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 가입</title>
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
		
		<header>
			<div class="header d-flex align-items-center justify-content-between">
				<!-- logo -->
				<div>
					<a href="#">
						<img width="150" alt="logo" src="/static/image/logo.PNG">
					</a>
				</div>
				
				<!-- 메뉴 -->
				<div class="d-flex align-items-center justify-content-between text-white">

					<h6 class="mr-5">
					<a class="text-white" href="#">운동영상 관리</a>
					</h6>
					<h6 class="mr-5">
						<a class="text-white" href="/manager/content/info_view">지식정보 관리</a>
					</h6>
					
					<!-- 로그인 아이콘에 대한 dropdown 적용 : 마이페이지, 로그아웃 -->
					<div class="dropdown d-flex align-items-center mr-4">
						<c:choose>
							<c:when test="${not empty managerId }">
								<a class="text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-bs-expanded="false" class="mr-2 text-dark"> 
									<h1 class="material-icons-outlined">logout</h1>
								</a>
								<ul class="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="dropdownMenuLink">
									<li>
										<a class="dropdown-item text-primary" href="/manager/sign_out">로그아웃</a>
									</li>
								</ul>
							</c:when>
							<c:otherwise>
								<a class="text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-bs-expanded="false" class="mr-2 text-dark"> 
									<h1 class="material-icons-outlined">login</h1>
								</a>
								<ul class="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="/manager/signin_view">로그인</a></li>
									<li><hr class="dropdown-divider"></li>
									<li>
										<a class="dropdown-item text-primary" href="/manager/signup_view">회원가입</a>
									</li>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>	
		</header>
		
		<div class="signUp mt-5 mb-5">
			<div class="signUpHeader d-flex align-items-center justify-content-center">
				<h3 class="col-2 text-white text-center">관리자</h3>
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white text-center">Sign Up</h3>
			</div>
			
			<div class="signUpInput mt-5">
				<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="아이디(필수)">					
				<input type="password" id="passwordInput" class="form-control mt-3" placeholder="비밀번호(필수)">
				<input type="password" id="passwordConfirmInput" class="form-control mt-3" placeholder="비밀번호 확인(필수)">
					
				<div class="d-flex align-items-center justify-content-center">
					<button type="button" id="joinBtn" class="button btn btn-danger mt-5 mb-4">관리자 가입</button>
				</div>
				
				<div class="line">
					또는
				</div>
			</div>
			
			<div class="login mt-2 mb-5 d-flex align-items-center justify-content-center">
				계정이 있으신가요?
				<a href="/manager/signin_view" class="font-weight-bold"> 로그인</a>
			</div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function() {
			$("#joinBtn").on("click", function() {
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				let passwordConfirm = $("#passwordConfirmInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요.");
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
				
				$.ajax({
					type:"post",
					url:"/manager/sign_up",
					data:{"loginId":loginId,"password":password},
					success:function(data) {
						if(data.result == "success") {
							location.href="/manager/signin_view";
						} else {
							alert("회원가입 실패");
						}
					},
					error:function() {
						alert("관리자 가입 에러");
					}
				});
				
			});
		});
	
	</script>

</body>
</html>