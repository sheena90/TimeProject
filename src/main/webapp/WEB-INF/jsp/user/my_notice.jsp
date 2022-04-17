<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My 알림설정</title>
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
				<a class="text-dark" href="/user/myProfile_view"><span>회원정보</span></a>
				<a class="text-dark" href="/user/myFavorites_view"><span>즐겨찾기</span></a>
				<a class="text-dark" href="/user/myPlan_view"><span>계획표</span></a>
				<a class="text-dark" href="/user/myQuestion_view"><span>Q&A</span></a>
				<a class="text-dark" href="/user/myNotice_view"><span class="text-danger">알림설정</span></a>
				<a class="text-dark" href="/user/myWithdraw_view"><span>회원탈퇴</span></a>
			</div>
			<hr>
			<div class="mr-3 ml-3 mt-5">
				<b>알림설정</b>
				<p><small class="text-secondary">Time과 함께 하는 알림을 받아보십시오.</small></p>
			</div>
		
			<div class="favoritesContent mt-5 ml-5">
			
				<!-- 체크박스 -->
				<div class="mt-4">
					<div class="checkbox mb-3">
	    				<input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
		    			<label for="check1" class="ml-3"><b>전체알림 받기</b></label>
					</div>
					<div class="ml-5">
						<div class="checkbox">
		    				<input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
			    			<label for="check1" class="ml-3">새로운 영상 콘텐츠 알림을 받아보시겠습니까?</label>
						</div>
						<div class="checkbox">
		    				<input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
			    			<label for="check1" class="ml-3">새로운 지식정보 알림을 받아보시겠습니까?</label>
						</div>
						<div class="checkbox">
		    				<input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
			    			<label for="check1" class="ml-3">라이브 강의 알림을 받아보시겠습니까?</label>
						</div>
						<div class="checkbox">
		    				<input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
			    			<label for="check1" class="ml-3">Time 새로운 소식을 받아보시겠습니까?</label>
						</div>
					</div>
				</div>
			</div>
			<div class="page">
				<button type="button" class="btn btn-primary mr-3">적용</button>
				<button type="button" class="btn btn-secondary">취소</button>
			</div>
		
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>

</body>
</html>