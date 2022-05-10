<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CommunityCreate</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
  	
</head>
<body>
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<section class="communityListSection">
			<div class="communityListImage"></div>
			<div class="communityList">
			<div class="communityListTable w-75">
				<h4 class="text-center pt-4 pb-4">My 게시글</h4>
				
				<table class="table text-center mt-3">
					<thead>
						<tr>
							<th>No.</th>
							<th>제목</th>
							<th>작성시간</th>
						</tr>
					</thead>
					<tbody>
						
						<c:forEach var="post" items="${postList }">
							<tr>
								<td>${post.id }</td>
								<td><a href="#" data-toggle="modal" data-target="#createModal" class="detailBtn" data-post-id="${post.id }">${post.subject }</a></td>
								<td><fmt:formatDate value="${post.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
				
				<div class="page mt-4">
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
	
	
	<!-- Modal -->
	<div class=" modal  fade" id="createModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class=" modal-dialog  modal-dialog-centered modal-xl" role="document">
	    	<div class="modal-content modalContent">
		      	<div class="modal-body">
	        		
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span class="text-white" aria-hidden="true">&times;</span>
        			</button>
	        		
	        		<!-- 삽입 내용 -->
	        		<div class="signUp mt-5 mb-5 bg-secondary">
						<div class="signUpHeader d-flex align-items-center justify-content-center">
							<img class="col-2" width="120" alt="logo" src="/static/image/logo.PNG" >
							<h3 class="text-center text-white"> | </h3>
							<h3 class="col-2 text-white">Edit</h3>
						</div>
							
						<div>
							<div class="d-flex align-items-center justify-content-start ml-3 mt-3">
								<span class="material-icons-outlined" style="color:red; font-size:30px;">campaign</span>
								<span>Stop! 폭언이나 욕설 금지</span>
							</div>
							<hr class="ml-3 mr-3">
							<div class="ml-3 mr-3">
								<h6>제목</h6>
								<input type="text" class="form-control mt-3" placeholder="제목을 입력해주세요" id="titleInput">
								<textarea rows="10" cols="1000" class="form-control mt-3" placeholder="내용을 입력해주세요" id="contentInput"></textarea>
							</div>
							<div class="ml-3 mr-3">
								<!--  <input type="file" class="mt-3" id="fileInput">-->
								<div class="d-flex justify-content-between mt-3">
									<a href="/post/community/list_view" class="btn btn-dark">목록으로</a>
									<div>
										<button type="button" class="btn btn-danger" id="deleteBtn">삭제</button>
										<button type="button" class="btn btn-dark" id="editBtn">수정</button>
									</div>
								</div>
							</div>
						</div>
					</div>
		      			
		      	</div>
	      	</div>
	      	
	  	</div>
	</div>
	
	
	<script>
		$(document).ready(function() {
			
			$(".detailBtn").on("click", function() {
				
				let postId = $(this).data("post-id");
				$("#editBtn").data("post-id", postId);
				$("#deleteBtn").data("post-id", postId);
				
				$.ajax({
					
					type:"post",
					url:"/post/community/detail",
					data:{"id":postId},
					success:function(data) {
						
						$("#titleInput").val(data.subject);
						$("#contentInput").val(data.content);
					},
					error:function() {
						alert("디테일 에러");
					}
				});
			});
			
			
			// 게시글 수정
			$("#editBtn").on("click", function() {
				
				let postId = $(this).data("post-id");
				let title = $("#titleInput").val();
				let content = $("#contentInput").val();
				
				
				$.ajax({
					type:"post",
					url:"/post/community/update",
					data:{"postId":postId, "subject":title, "content":content},
					success:function(data) {
						
						
						if(data.result == "success") {
							location.href="/post/community/list_view";
						} else {
							alert("게시글 수정 실패");
						}
					},
					error:function() {
						alert("게시글 수정 에러");
					}
				});
			}); 
			
			
			$("#deleteBtn").on("click", function() {
				let postId = $(this).data("post-id");
				
				$.ajax({
					type:"get",
					url:"/post/community/delete",
					data:{"postId":postId},
					success:function(data) {
						if(data.result == "success") {
							location.href="/post/community/list_view";
						} else {
							alert("게시글 삭제 실패");
						}
					},
					error:function() {
						alert("게시글 삭제 에러");
					}
				});
			});
			 
			
		});
	
	</script>

</body>
</html>