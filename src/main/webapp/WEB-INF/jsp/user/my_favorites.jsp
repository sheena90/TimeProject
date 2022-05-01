<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My 즐겨찾기</title>
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
				<a class="text-dark" href="/user/myFavorites_view"><span class="text-danger">즐겨찾기</span></a>
				<a class="text-dark" href="/user/myPlan_view"><span>계획표</span></a>
				<a class="text-dark" href="/user/myQuestion_view"><span>Q&A</span></a>
				<a class="text-dark" href="/user/myWithdraw_view"><span>회원탈퇴</span></a>
			</div>
			<hr>
			<div class="mr-3 ml-3 mt-5">
				<b>즐겨찾기</b>
				<p><small class="text-secondary">회원님이 추가한 즐겨찾기 목록입니다.</small></p>
			</div>
		
			<div class="favoritesContent bg-warning">
			
			</div>
		
		
			<div class="page">
				<ul class="pagination">
					<li class="paginationLi"><a href="#" class="paginationA first">처음 페이지</a></li>
					<li class="paginationLi"><a href="#" class="paginationA arrow left"><<</a></li>
					<li class="paginationLi"><a href="#" class="paginationA active num">1</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">2</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">3</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">4</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">5</a></li>
					<li class="paginationLi"><a href="#" class="paginationA arrow right">>></a></li>
					<li class="paginationLi"><a href="#" class="paginationA last">끝 페이지</a></li>
				</ul>
			</div>
		
		
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>

</body>
</html>