<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 QuestionDetail</title>
  	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	
  	
  	<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
  	
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<div class="communityReview mt-5 mb-5">
			<div class="d-flex col-8">
				<h4>${questionDetail.subject }</h4>
			</div>
			
			<div class="d-flex col-8 mt-3">
			
				<c:choose>
					<c:when test="${not empty userProfile }">
						<div class="communityReviewProfile">
							<img class="profile" src="${userProfile } ">
						</div>
					</c:when>
					<c:otherwise>
						<div class="communityReviewProfile">
							<img class="profile" src="/static/image/profile4.png ">
						</div>
					</c:otherwise>
				</c:choose>
				
				<div class="ml-3">
					<span>${questionDetail.name}</span>
				</div>
				<div class="ml-4">
					<small><fmt:formatDate value="${questionDetail.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></small>
				</div>
			</div>
			<hr>
			
			<!-- 글쓴이 내용 -->
			<div class="favoritesContent">
				<h5>${questionDetail.content }</h5>
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