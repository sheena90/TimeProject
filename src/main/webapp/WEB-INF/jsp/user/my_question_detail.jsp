<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Q&A</title>

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
		
		<div class="communityReview mt-5 mb-5">
			<div class="d-flex col-8">
				<h4>${question.subject }</h4>
			</div>
			
			<div class="d-flex col-8 mt-3">
				<div class="communityReviewProfile">
					<img class="profile" src="https://i.pinimg.com/originals/e3/cb/8e/e3cb8eeb33d7d8f7a5ac65a08bc255ed.jpg">
				</div>
				<div class="ml-3">
					<span>${userNickname }</span>
				</div>
				<div class="ml-4">
					<small><fmt:formatDate value="${question.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></small>
				</div>
			</div>
			<hr>
			
			<!-- 글쓴이 내용 -->
			<div class="favoritesContent">
				<h5>${question.content }</h5>
			</div>
			
			
			<!-- 답장 -->
			<div class="mt-5">

				<div class="ml-5 mt-3">
					<div>
						<span>답장내용</span>
					</div>
					<div>
						<small>답장시간</small>
					</div>
				</div>
					
				
			</div>
			<hr>
			
			<div class="mt-5">
				<textarea rows="5" id="comment" class="form-control"></textarea>
				<div class="d-flex justify-content-end mt-3">
					<button type="button" class="btn btn-danger" id="commentBtn" data-post-id="${postFull.id }">등록</button>
				</div>
			</div>
			
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>

</body>
</html>