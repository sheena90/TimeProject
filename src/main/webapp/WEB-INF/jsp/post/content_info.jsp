<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ContentInfo</title>
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
			<div class="communityMainContent d-flex">
			
				<div class=" col-10">
				
					<!-- 지식정보 -->
					<div class="communityMainContentBox mt-4">
						<div class="d-flex contentInfo mt-4">
							<div>
								<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_1.jpg">
							</div>
							<div class="ml-3">
								<b>잘못 알고 있는 헬스 상식 6가지</b>
								<p>미국 일간 워싱턴포스트지가 아처를 비롯해 전문가들의 견해를 토대로 잘못된 헬스 상식 6가지를 소개했다.</p>
							</div>
						</div>
						<div class="d-flex contentInfo mt-4">
							<div>
								<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_1.jpg">
							</div>
							<div class="ml-3">
								<b>잘못 알고 있는 헬스 상식 6가지</b>
								<p>미국 일간 워싱턴포스트지가 아처를 비롯해 전문가들의 견해를 토대로 잘못된 헬스 상식 6가지를 소개했다.</p>
							</div>
						</div>
						<div class="d-flex contentInfo mt-4">
							<div>
								<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_1.jpg">
							</div>
							<div class="ml-3">
								<b>잘못 알고 있는 헬스 상식 6가지</b>
								<p>미국 일간 워싱턴포스트지가 아처를 비롯해 전문가들의 견해를 토대로 잘못된 헬스 상식 6가지를 소개했다.</p>
							</div>
						</div>
						<div class="d-flex contentInfo mt-4">
							<div>
								<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_1.jpg">
							</div>
							<div class="ml-3">
								<b>잘못 알고 있는 헬스 상식 6가지</b>
								<p>미국 일간 워싱턴포스트지가 아처를 비롯해 전문가들의 견해를 토대로 잘못된 헬스 상식 6가지를 소개했다.</p>
							</div>
						</div>
						<div class="d-flex contentInfo mt-4">
							<div>
								<img width="150" height="100" alt="지식정보" src="/static/image/지식정보_1.jpg">
							</div>
							<div class="ml-3">
								<b>잘못 알고 있는 헬스 상식 6가지</b>
								<p>미국 일간 워싱턴포스트지가 아처를 비롯해 전문가들의 견해를 토대로 잘못된 헬스 상식 6가지를 소개했다.</p>
							</div>
						</div>
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
				
				
				<div class="communityMainContentMy col-2">
					<div class="text-center mt-5 color1">
						<b>전체 카테고리</b>
						<div>
							<input type="checkbox" id="menuicon">
							<label for="menuicon" class="mt-4">
								<span></span>
								<span></span>
								<span></span>
							</label>
							
							<!-- 카테고리 -->
							<div class="sidebar">
								<div class="d-flex col-10 justify-content-between mt-4">
									<div class="reviewLike text-center">
										<small>헬스 상식</small>
									</div>
									<div class="reviewLike text-center">
										<small>건강한 운동</small>
									</div>
								</div>
								
								<div class="d-flex col-10 justify-content-between mt-5">
									<div class="reviewLike text-center">
										<small>음식</small>
									</div>
									<div class="reviewLike text-center">
										<small>운동량</small>
									</div>
								</div>
								
								 
								
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</section>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
</body>
</html>