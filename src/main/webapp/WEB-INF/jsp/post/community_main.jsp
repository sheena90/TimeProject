<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CommunityMain</title>
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
				<div class="communityMainContentMy col-4">
					<c:choose>
						<c:when test="${not empty userProfile }">
							<div class="mainContentProfileBox">
								<img class="profile" src="${userProfile } ">
							</div>
						</c:when>
						<c:otherwise>
							<div class="mainContentProfileBox">
								<img class="profile" src="/static/image/profile4.png ">
							</div>
						</c:otherwise>
					</c:choose>
				
					<div class="text-center">
						<h5 class="mt-4 text-white mb-4"><b>Hi, ${userNickname }님</b></h5>
						<span class="text-warning"><i class="bi bi-brightness-high-fill"></i></span>
					</div>
					<div>
						<div class="mt-5 d-flex justify-content-between ml-5 mr-5">
							<div class="col-5">
								<a class="color1"href="/post/community/list_view" class="color1">
									<span class="color1"><i class="bi bi-bookmark-fill"></i></span>
									<span class="color1 ml-4"><b>My 게시글</b></span>
								</a>
							</div>
							<div>
								<a class="color1"href="/post/community/list_view" class="color1"><i class="bi bi-chevron-right"></i></a>
							</div>
						</div>
						<div class="mt-5 d-flex justify-content-between ml-5 mr-5">
							<div class="col-5">
								<a class="color1"href="/post/community/create_view" class="color1">
									<span class="color1"><i class="bi bi-pencil-fill"></i></span>
									<span class="color1 ml-4"><b>New 글작성</b></span>
								</a>
							</div>
							<div>
								<a class="color1"href="/post/community/create_view" class="color1"><i class="bi bi-chevron-right"></i></a>
							</div>
						</div>
						
					</div>
				</div>
				
				<div class="col-8">
					<div class="communityMainContentText">
						<c:forEach var="postFull" items="${postFullList }">
						<a href="/post/community/review_view?id=${postFull.id }" class="text-dark">
							<div class="communityMainContents d-flex mt-4 justify-content-center align-items-center">
								
								<div class="col-8">
									<span>${postFull.subject }</span>
								</div>
								<div class="col-4 d-flex justify-content-between">
									<b>${postFull.userNickname }</b>
									<span>${postFull.time }</span>
								</div>
								
							</div>
						</a>
						</c:forEach>
					</div>
					
					
					<div class="page mt-2">
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
				
				
				
			</div>
		</section>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
</body>
</html>