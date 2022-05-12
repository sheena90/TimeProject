<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CommunityReview</title>
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
				<h4>${postFull.subject }</h4>
			</div>
			
			<div class="d-flex col-8 mt-3">
				<div>
					<span>${postFull.userNickname }</span>
				</div>
				<div class="ml-4">
					<small><fmt:formatDate value="${postFull.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></small>
				</div>
			</div>
			<hr>
			
			<!-- 글쓴이 내용 -->
			<div class="favoritesContent">
				<h5>${postFull.content }</h5>
			</div>
			
			<!-- 댓글 -->
			<div class="mt-5">
				<b>댓글</b>
				<hr>
				<c:forEach var="commentList" items="${commentList }">
					<div class="d-flex ml-5">
					
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
							<span>${commentList.userNickname }</span>
						</div>
					</div>
					<div class="ml-5 mt-3">
						<div>
							<span>${commentList.content }</span>
						</div>
						<div>
							<small><fmt:formatDate value="${commentList.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></small>
						</div>
					</div>
					<hr>
				</c:forEach>
			</div>
			
			<div class="mt-5">
				<textarea rows="5" id="comment" class="form-control"></textarea>
				<div class="d-flex justify-content-end mt-3">
					<button type="button" class="btn btn-danger" id="commentBtn" data-post-id="${postFull.id }">등록</button>
				</div>
			</div>
			
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	
	<script>
		$(document).ready(function() {
			
			// 댓글
			$("#commentBtn").on("click", function() {
				
				let postId = $(this).data("post-id");
				let comment = $("#comment").val();
				
				if(comment == "") {
					alert("댓글을 입력하세요.");
					return;
				}
				
				$.ajax({
					
					type:"post",
					url:"/post/comment/create",
					data:{"postId":postId, "content":comment},
					success:function(data) {
						
						if(data.result == "success") {
							location.reload();
						} else {
							alert("댓글 쓰기 실패");
						}
					},
					error:function() {
						alert("댓글 쓰기 에러");
					}
					
				});
			});
			
		});
	
	</script>

</body>
</html>